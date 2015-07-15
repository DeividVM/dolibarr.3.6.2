<?php
/* Copyright (C) 2010-2012 Regis Houssin  <regis.houssin@capnetworks.com>

 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 * or see http://www.gnu.org/
 */

/**
 *	\file       htdocs/core/modules/project/pdf/pdf_baleine.modules.php
 *	\ingroup    project
 *	\brief      Fichier de la classe permettant de generer les projets au modele Baleine
 *	\author	    Regis Houssin
 */

require_once DOL_DOCUMENT_ROOT.'/core/modules/project/modules_project.php';
require_once DOL_DOCUMENT_ROOT.'/projet/class/project.class.php';
require_once DOL_DOCUMENT_ROOT.'/projet/class/task.class.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/company.lib.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/pdf.lib.php';


/**
 *	\class      pdf_baleine
 *	\brief      Classe permettant de generer les projets au modele Baleine
 */

class pdf_proyecto extends ModelePDFProjects
{
	var $emetteur;	// Objet societe qui emet

	/**
	 *	Constructor
	 *
	 *  @param		DoliDB		$db      Database handler
	 */
	function __construct($db)
	{
		global $conf,$langs,$mysoc;

		$langs->load("main");
		$langs->load("projects");
		$langs->load("companies");

		$this->db = $db;
		$this->name = "opendoor";
		$this->description = $langs->trans("DocumentModelProyecto");

		// Dimension page pour format A4
		$this->type = 'pdf';
		$formatarray=pdf_getFormat();
		$this->page_largeur = $formatarray['width'];
		$this->page_hauteur = $formatarray['height'];
		$this->format = array($this->page_largeur,$this->page_hauteur);
		
		$this->marge_left=isset($conf->global->MAIN_PDF_MARGIN_LEFT)?$conf->global->MAIN_PDF_MARGIN_LEFT:10;
		$this->marge_right=isset($conf->global->MAIN_PDF_MARGIN_RIGHT)?$conf->global->MAIN_PDF_MARGIN_RIGHT:10;
		$this->marge_top =isset($conf->global->MAIN_PDF_MARGIN_TOP)?$conf->global->MAIN_PDF_MARGIN_TOP:10;
		$this->marge_bottom =isset($conf->global->MAIN_PDF_MARGIN_BOTTOM)?$conf->global->MAIN_PDF_MARGIN_BOTTOM:10;

		$this->option_logo = 1;                    // Affiche logo FAC_PDF_LOGO
		$this->option_tva = 1;                     // Gere option tva FACTURE_TVAOPTION
		$this->option_codeproduitservice = 1;      // Affiche code produit-service

		// Recupere emmetteur
		$this->emetteur=$mysoc;
		if (! $this->emetteur->country_code) $this->emetteur->country_code=substr($langs->defaultlang,-2);    // By default if not defined

	}


	/**
	 *	Fonction generant le projet sur le disque
	 *
	 *	@param	Project		$object   		Object project a generer
	 *	@param	Translate	$outputlangs	Lang output object
	 *	@return	int         				1 if OK, <=0 if KO
	 */
	//function write_file($object, $extrafields, $outputlangs)
	function write_file($object, $extrafields, $outputlangs)
	{
		global $user,$langs,$conf;

		if (! is_object($outputlangs)) $outputlangs=$langs;
		// For backward compatibility with FPDF, force output charset to ISO, because FPDF expect text to be encoded in ISO
		if (! empty($conf->global->MAIN_USE_FPDF)) $outputlangs->charset_output='ISO-8859-1';

		$outputlangs->load("main");
		$outputlangs->load("dict");
		$outputlangs->load("companies");
		$outputlangs->load("projects");

		

		if ($conf->projet->dir_output)
		{
			//$nblignes = count($object->lines);  // This is set later with array of tasks

			$objectref = dol_sanitizeFileName($object->ref);
			$dir = $conf->projet->dir_output;
			if (! preg_match('/specimen/i',$objectref)) $dir.= "/" . $objectref;
			$file = $dir . "/" . $objectref . ".pdf";

			if (! file_exists($dir))
			{
				if (dol_mkdir($dir) < 0)
				{
					$this->error=$langs->transnoentities("ErrorCanNotCreateDir",$dir);
					return 0;
				}
			}

			if (file_exists($dir))
			{
                $pdf=pdf_getInstance($this->format);
                $default_font_size = pdf_getPDFFontSize($outputlangs);	// Must be after pdf_getInstance
                $heightforinfotot = 50;	// Height reserved to output the info and total part
		        $heightforfreetext= (isset($conf->global->MAIN_PDF_FREETEXT_HEIGHT)?$conf->global->MAIN_PDF_FREETEXT_HEIGHT:5);	// Height reserved to output the free text on last page
	            $heightforfooter = $this->marge_bottom + 8;	// Height reserved to output the footer (value include bottom margin)
                $pdf->SetAutoPageBreak(1,0);

                if (class_exists('TCPDF'))
                {
                    $pdf->setPrintHeader(false);
                    $pdf->setPrintFooter(false);
                }
                $pdf->SetFont(pdf_getPDFFont($outputlangs));

				// Complete object by loading several other informations
				$task = new Task($this->db);
				$tasksarray = $task->getTasksArray(0,0,$object->id);

				$object->lines=$tasksarray;
				$nblignes=count($object->lines);

				$pdf->Open();
				$pagenb=0;
				$pdf->SetDrawColor(128,128,128);

				$pdf->SetTitle($outputlangs->convToOutputCharset($object->ref));
				$pdf->SetSubject($outputlangs->transnoentities("Name"));
				$pdf->SetCreator("Opendoorsoft");
				$pdf->SetAuthor($outputlangs->convToOutputCharset($user->getFullName($outputlangs)));
				$pdf->SetKeyWords($outputlangs->convToOutputCharset($object->ref)." ".$outputlangs->transnoentities("Project"));
				if (! empty($conf->global->MAIN_DISABLE_PDF_COMPRESSION)) $pdf->SetCompression(false);

				$pdf->SetMargins($this->marge_left, $this->marge_top, $this->marge_right);   // Left, Top, Right

				// New page
				$pdf->AddPage();
				$pagenb++;
				
				$extrafields_val = $this->_extrafields($object->id, $extrafields);		
				
				$this->_pagehead($pdf, $object, $extrafields_val, 1, $outputlangs);
				$pdf->SetFont('','', $default_font_size - 1);
				//$pdf->MultiCell(0, 3, '');		// Set interline to 3
				$pdf->SetTextColor(0,0,0);

				
				$marge = 2;
				$pdf->SetFillColor(181, 181, 181);
				//***********************************************************************************************

				$tab_top = 50;
				$tab_height = 200;
				$tab_top_newpage = 40;
                $tab_height_newpage = 210;

                $pdf->Rect($this->marge_left, $pdf->GetY() + $marge, 62, 23);

                $height_block_2 = $pdf->GetY() +  + $marge;

                $pdf->SetXY($this->marge_left, $pdf->GetY() + $marge);
                $pdf->SetFont('','BU');
                $pdf->Cell(62, 7, $outputlangs->transnoentities("PARTE DE TRABAJO"), 0, 2, 'C');
                $pdf->SetFont('','');
                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + 1);
                $pdf->Cell(20, 5, $outputlangs->transnoentities("FICHA Nº: "), 0, 0, 'L');
                $pdf->Cell(40, 5, $object->ref, "B", 1, 'C');
                $pdf->Cell(20, 5, $outputlangs->transnoentities("PARTE Nº: "), 0, 0, 'L');
                $pdf->Cell(40, 5, $object->title, "B", 1, 'C');
                $pdf->Cell(20, 5, $outputlangs->transnoentities("ESP. "), 0, 0, 'L');
                $pdf->Cell(40, 5, "", 0, 1, 'C');


                //***********************************************************************************************
                $left_marge = $this->marge_left + 62 + $marge;

                $pdf->SetXY($left_marge, $height_block_2);
                $pdf->SetFillColor(181, 181, 181);
                $pdf->SetXY($pdf->GetX(), $pdf->GetY());
                $pdf->Cell(62, 7, $outputlangs->transnoentities("FE:                      ") . dol_print_date($object->date_start,'day'), 0, 2, 'L', true);
                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + 1);
                $pdf->Cell(62, 7, $outputlangs->transnoentities("FV:                      "), 0, 2, 'L', true);
                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + 1);
                $pdf->Cell(62, 7, $outputlangs->transnoentities("POLIZA:                  "), 0, 2, 'L', true);

                //***********************************************************************************************
                $left_marge = $this->marge_left + (62*2) + (2*2);

                $pdf->SetXY($left_marge, $height_block_2);
                
                $pdf->SetXY($pdf->GetX(), $pdf->GetY());
                $pdf->Cell(62, 7, $outputlangs->transnoentities("CIA: "), 0, 2, 'L', true);
                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + 1);
                $pdf->Cell(62, 7, $outputlangs->transnoentities("PERIO: "), 0, 2, 'L', true);
                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + 1);
                $pdf->Cell(62, 7, $outputlangs->transnoentities("SIN: "), 0, 1, 'L', true);

                //***********************************************************************************************
                $pdf->SetFont('','U');
                $pdf->SetFont("");

                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + $marge);
                $pdf->MultiCell(190, 35, 
                	$outputlangs->transnoentities("DATOS AUXILIARES: "), 
                	1, 'L');

                //***********************************************************************************************
                $operario_posx = $pdf->GetX();
                $operario_posy = $pdf->GetY() + $marge;
                $operario_width = 190;
                $operario_height = 63;

                $marge_line = 7;
                $pdf->SetFontSize("11");
                $pdf->Rect($pdf->GetX(), $pdf->GetY() + $marge, $operario_width, $operario_height);

                $pdf->SetXY($pdf->GetX(), $pdf->GetY() + $marge);
                $pdf->SetFont('','B');
                $pdf->Cell(25, $marge_line, $outputlangs->transnoentities("OPERARIO: "), "B", 0, 'L');
                $pdf->SetFont("");
                $pdf->Cell(116, $marge_line, $extrafields_val->slct_oper, "B", 0, 'L');
                $pdf->Cell(49 - 1, $marge_line, $outputlangs->transnoentities("CÓDIGO: "), "B", 1, 'L');

                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 2, $marge_line, $outputlangs->transnoentities("CAUSA AVERÍA: "), "B", 1, 'L');
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 2, $marge_line, $outputlangs->transnoentities("UBICACIÓN DE LA AVERÍA: "), "B", 1, 'L');
                $pdf->SetX($pdf->GetX() + 1);
                $str_descp_1 = "DESCRIPCIÓN TRABAJOS REALIZADOS INDICANDO: medidas, diámetros, pisos, estancias, pisos, ";
                $str_descp_2 = "estancias, materiales afectados, materiales sustituidos, teléfonos no proporcionados, etc...";
                $pdf->Cell(190 - 2, $marge_line, $str_descp_1, "B", 1, 'L');
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 2, $marge_line, $str_descp_2, "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 2, $marge_line, "", "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 47 - 2, $marge_line, "", "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 47 - 2, $marge_line, "", "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell(190 - 47 - 2, $marge_line, "", "B", 1);


                // Cobrado
                $pdf->Rect($operario_posx + $operario_width - 47, 
                		   $operario_posy + $operario_height - 15,
                		   47, 15);

                $pdf->SetXY($operario_posx + $operario_width - 47 , $operario_posy + $operario_height - 15);
                $pdf->SetFont('','BU');
                $pdf->SetFontSize(7);
                $pdf->Cell(47 + $marge, 5, $outputlangs->transnoentities("COBRADO"), 0, 2, 'L');
                $pdf->SetFont("");
                $pdf->Cell(23 + $marge, 5, $outputlangs->transnoentities("SÍ       [     ]"), 0, 0, 'L');
                $pdf->Cell(23 + $marge, 5, $outputlangs->transnoentities("NO       [     ]"), 0, 1, 'L');
                $pdf->SetX($operario_posx + $operario_width - 47);
                $pdf->Cell(47 + $marge, 5, $outputlangs->transnoentities("CANTIDAD     [                       ]"), 0, 1, 'L');
                $pdf->SetFontSize("11");

                
                //***********************************************************************************************
                $posx = $pdf->GetX();
                
                $pdf->SetY($pdf->GetY() + $marge);
                $posy = $pdf->GetY();

                $width_block_5 = 110;
                $marge_line = 7;

                $pdf->Rect($posx, $posy, $width_block_5, $marge_line * 4);


                $pdf->SetXY($pdf->GetX() + 1, $posy);
                $pdf->Cell($width_block_5 - 2, $marge_line, $outputlangs->transnoentities("OBSERVACIONES: "), "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell($width_block_5 - 2, $marge_line, "", "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell($width_block_5 - 2, $marge_line, "", "B", 1);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell($width_block_5 - 2, $marge_line, "", "B", 1);
                

                //***********************************************************************************************

                $bc_posx7 = $pdf->GetX();
				$bc_posy7 = $pdf->GetY() + $marge;
                $pdf->Rect($bc_posx7, $bc_posy7, $width_block_5, 70);
                
                $pdf->SetXY($pdf->GetX() + 1, $pdf->GetY() + $marge);
                $pdf->SetFont('','BU');
                $pdf->Cell(30, $marge_line, $outputlangs->transnoentities("CONTROL: "), 0, 0, "L");
                $pdf->SetFont('');
                $pdf->Cell(30, $marge_line, $outputlangs->transnoentities("H. cita: "), 0, 1, "L");

                $pdf->SetX($pdf->GetX() + 1);
                $pdf->SetFontSize("8");
                $width_column = 16;
                $pdf->Cell($width_column , $marge_line, $outputlangs->transnoentities("Entrada"), 0, 0);
                $pdf->SetX($pdf->GetX() + 1);
                $pdf->Cell($width_column , $marge_line, $outputlangs->transnoentities("Salida"), 0, 1);

                for ($i = 1; $i <= 4; $i++) {
				    $pdf->SetX($pdf->GetX() + 1);
				    $pdf->Cell($width_column, $marge_line, " ", 1);
				    $pdf->SetX($pdf->GetX() + 1);
				    $pdf->Cell($width_column, $marge_line, " ", 1);
				    $pdf->SetX($pdf->GetX() + 1);
				    $pdf->Cell(10, $marge_line, $outputlangs->transnoentities("Total: "), 0, 0);
				    $pdf->SetX($pdf->GetX() + 1);
				    $pdf->Cell(15, $marge_line, " ", 1, 1);
				    $pdf->SetY($pdf->GetY() + 1);
				}

				$pdf->SetXY($pdf->GetX() + 1, $pdf->GetY() + 1);
			    $pdf->Cell(28, $marge_line, $outputlangs->transnoentities("Desplazamiento:"), 0, 0);
			    $pdf->SetX($pdf->GetX() + 1);
			    $pdf->SetFont('','B');
				$pdf->Cell(30, $marge_line, $outputlangs->transnoentities("HORAS A FACTURAR"), 0, 1);

				$hf_posx = $pdf->GetX();
				$hf_posy = $pdf->GetY();
				$pdf->SetFontSize("7");
				$pdf->Cell(23, 4, $outputlangs->transnoentities(" Urbano"), 0, 0, "L", true);
				$pdf->Cell(4, 4, "   ", 1, 1, "R");
				$pdf->Cell(23, 4, $outputlangs->transnoentities(" Interurbano"), 0, 0, "L", true);
				$pdf->Cell(4, 4, "   ", 1, 1, "R");
				$pdf->Cell(23, 4, $outputlangs->transnoentities(" No hay"), 0, 0, "L", true);
				$pdf->Cell(4, 4, "   ", 1, 1, "R");
				$pdf->Cell(23, 4, $outputlangs->transnoentities(" Ve.Emp"), 0, 0, "L", true);
				$pdf->Cell(4, 4, "   ", 1, 1, "R");

				$pdf->SetFontSize("10");
                $pdf->SetFont('');

                $pdf->Rect($hf_posx + 31, $hf_posy, 30, 16);


                $marge_width = $bc_posx7 + ($marge * 2) + 30 + 30;
                $pdf->SetXY($marge_width, $bc_posy7);

                $pdf->MultiCell(46, 22, "Firma operario:", 0, "L", true);
                $pdf->SetXY($marge_width, $pdf->GetY() + 2);
                $pdf->SetFillColor(221, 221, 221);
                $pdf->MultiCell(46, 22, "Conforma firma cliente:", 0, "L", true);
                $pdf->SetXY($marge_width, $pdf->GetY() + 2);
                $pdf->SetFillColor(181, 181, 181);
                $pdf->MultiCell(46, 22, "Recepción:", 0, "L", true);

                //***********************************************************************************************
                
                $width_block_6 = 190 - ($width_block_5 + $marge);

                $pdf->Rect($this->marge_left + $width_block_5 + $marge, 
                		$posy, $width_block_6, 35);

                $pdf->SetXY($this->marge_left  + $width_block_5 + $marge, 
                			$posy);

                $pdf->SetFontSize("8");


                $str_msg = "El cliente o aseguradora queda totalmente informado de que para realizar la apertura de la puerta ";
                $str_msg.= "se tiene que realizar daños a la misma y/o en sus elementos, por ello da su consentimiento para ";
                $str_msg.= "realizar la apertura. OPENDOOR no se responsabiliza de los posible daños causados en la misma";

                $height_info = 20;
                $pdf->MultiCell($width_block_6, $height_info, $str_msg);
				$pdf->SetXY($this->marge_left  + $width_block_5 + $marge, 
                			$posy + $height_info);

                $pdf->MultiCell($width_block_6, 15, "FIRMA CLIENTE:", 0, "L", true);
                $pdf->SetFontSize("11");

                $hf_posx = $pdf->GetX();
				$hf_posy = $pdf->GetY();
                $posx_b6 = $pdf->GetX();
                $posy_b6 = $pdf->GetY() + $marge;

                //***********************************************************************************************ç

                $height_block_8 = 64;
                $width_block_8 = $this->marge_left + $width_block_5 + $marge;
                $pdf->Rect($width_block_8, $posy_b6, $width_block_6 , $height_block_8);

                $pdf->SetXY($width_block_8, $posy_b6);

                $start_cell = $pdf->getX() + 1 ; 
                $pdf->SetXY($start_cell, $pdf->getY());
                $pdf->Cell($width_block_6 - $marge, 4, $outputlangs->transnoentities("MAT.OPERARIO:"), "B", 2, "L");
                $pdf->Cell($width_block_6 - $marge, 4, $outputlangs->transnoentities(""), "B", 2, "L");
                $pdf->Cell($width_block_6 - $marge, 4, $outputlangs->transnoentities("MAT.CAJA:"), "B", 2, "L");
                $pdf->Cell($width_block_6 - $marge, 4, $outputlangs->transnoentities(""), "B", 2, "L");
                $pdf->SetFont('','U');
                $pdf->SetFontSize("8");

                $rest_marge = 3;
                $width_cell = ($width_block_6 - 4) / 3;
                $pdf->Cell($width_cell, 7, $outputlangs->transnoentities("Proveedor"), 0, 0, "C");
                $pdf->Cell($width_cell, 7, $outputlangs->transnoentities("Nº Albarán"), 0, 0, "C");
                $pdf->Cell($width_cell, 7, $outputlangs->transnoentities("Total albarán"), 0, 1, "C");
                $pdf->SetFontSize("9");

                $marge_line = 6;
                for ($i = 1; $i <= 3; $i++) {
				    $pdf->SetX($start_cell);
				    $pdf->Cell($width_cell, $marge_line, " ", "B");
				    $pdf->SetX($pdf->GetX() + 1);
				    $pdf->Cell($width_cell, $marge_line, " ", "B");
				    $pdf->SetX($pdf->GetX() + 1);
				    $pdf->Cell($width_cell, $marge_line, " ", "B", 1);
				}

                //ITP

                $pdf->Rect($width_block_8, 
                		   $pdf->GetY() + 4,
                		   47, 15);

                $marge_line = 5;
                $pdf->SetXY($width_block_8 + 3, $pdf->GetY() + 4);
                $pdf->SetFont('','BU');
                $pdf->SetFontSize(8);
                $pdf->Cell(10, $marge_line, $outputlangs->transnoentities("ITP"), 0, 0, 'L');
                $pdf->SetFont("");
                $pdf->Cell(15, $marge_line, $outputlangs->transnoentities(" SÍ   [     ]"), 0, 0, 'L');
                $pdf->Cell(15 + $marge, $marge_line, $outputlangs->transnoentities("NO   [     ]"), 0, 1, 'L');
                $pdf->SetX($width_block_8);
                $pdf->Cell(47, $marge_line, $outputlangs->transnoentities("  HORA:    [                         ]"), 0, 1, 'L');
                $pdf->SetX($width_block_8);
                $pdf->Cell(47, $marge_line, $outputlangs->transnoentities("  FECHA:  [                         ]"), 0, 1, 'L');
                

				$pdf->SetXY($width_block_8 + 47, $pdf->GetY() - 15);
				$pdf->SetFont('','B');
                $pdf->MultiCell($width_block_6 - 47 , 15, "TOTAL MATERIAL", 0, "L", true);
                $pdf->SetFontSize("11");

				/*
				 * Pied de page
				 */
				$this->_pagefoot($pdf,$object,$outputlangs);
				if (method_exists($pdf,'AliasNbPages')) $pdf->AliasNbPages();

				/*
				 * Pied de page
				 */

				$pdf->Close();

				$pdf->Output($file,'F');
				if (! empty($conf->global->MAIN_UMASK))
				@chmod($file, octdec($conf->global->MAIN_UMASK));

				return 1;   // Pas d'erreur
			}
			else
			{
				$this->error=$langs->transnoentities("ErrorCanNotCreateDir",$dir);
				return 0;

			}
		}

		$this->error=$langs->transnoentities("ErrorConstantNotDefined","LIVRAISON_OUTPUTDIR");
		return 0;
	}

	/**
	 *  Show top header of page.
	 *
	 *  @param	PDF			$pdf     		Object PDF
	 *  @param  Object		$object     	Object to show
	 *  @param  int	    	$showaddress    0=no, 1=yes
	 *  @param  Translate	$outputlangs	Object lang for output
	 *  @return	void
	 */
	function _pagehead(&$pdf, $object, $extrafields, $showaddress, $outputlangs)
	{
		global $langs,$conf,$mysoc;

		$default_font_size = pdf_getPDFFontSize($outputlangs);

		pdf_pagehead($pdf,$outputlangs,$this->page_hauteur);

		$pdf->SetTextColor(0,0,60);
		$pdf->SetFont('','B', $default_font_size + 3);

		$marge_header = 126;
                $posx=$this->page_largeur-$this->marge_right-$marge_header;
		$posy=$this->marge_top;

		$pdf->SetXY($this->marge_left,$posy);

		// Logo
		$logo=$conf->mycompany->dir_output.'/logos/logo-opendoor.jpeg';
		if ($mysoc->logo)
		{
			if (is_readable($logo))
			{
			    $height=pdf_getHeightForLogo($logo);
			    $pdf->Image($logo, 20, 5, 35, 35);	// width=0 (auto)
			}
			else
			{
				$pdf->SetTextColor(200,0,0);
				$pdf->SetFont('','B', $default_font_size - 2);
				$pdf->MultiCell(100, 3, $langs->transnoentities("ErrorLogoFileNotFound",$logo), 0, 'L');
				$pdf->MultiCell(100, 3, $langs->transnoentities("ErrorGoToModuleSetup"), 0, 'L');
			}
		}
		else $pdf->MultiCell(100, 4, $outputlangs->transnoentities($this->emetteur->name), 0, 'L');

		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->SetXY($posx,$posy);
		
		$marge_line = 5;
		$pdf->SetTextColor(0,0,0);
		$width_field_name = 27;
		$width_field_value = $marge_header - $width_field_name - 2;
		$name_short_width = 12;
		$fields_2row_width = ($width_field_value - $name_short_width) / 2;

        //echo '<pre>';
        //print_r($object);
        //echo  '</pre>';

        //echo '<pre>';
        //print_r($extrafields);
        //echo  '</pre>';


		$pdf->Rect($posx, $posy, $marge_header, ( $marge_line * 6 ) + 1);

		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Nombre:     "), '0', 'L');
		$pdf->SetFont('');
		$pdf->MultiCell($width_field_value, $marge_line, $extrafields->nom_cli, 'B', 'L');
		$posy+= $marge_line;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Domicilio:  "), '0', 'L');
		$pdf->SetFont('');
		$pdf->MultiCell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->dir_cli), 'B', 'L');
		$posy+= $marge_line;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("D.N.I/C.I.F:"), '0', 'L');
		$pdf->SetFont('');
		$pdf->Cell($fields_2row_width, $marge_line, $outputlangs->convToOutputCharset($extrafields->dni_cli), 'B', 'C');
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($name_short_width, $marge_line, $outputlangs->transnoentities(" TEL:"), '0', 'L');
		$pdf->SetFont('');
		$pdf->MultiCell($fields_2row_width, $marge_line, $outputlangs->convToOutputCharset($extrafields->tel_cli), 'B', 'C');
		$posy+= $marge_line;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Población:  "), '0', 'L');
		$pdf->SetFont('');
		$pdf->Cell($fields_2row_width, $marge_line, $outputlangs->convToOutputCharset($extrafields->loc_cli), 'B', 'L');
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($name_short_width, $marge_line, $outputlangs->transnoentities(" C.P:"), '0', 'L');
		$pdf->SetFont('');
		$pdf->MultiCell($fields_2row_width, $marge_line, $outputlangs->convToOutputCharset($extrafields->zipcode_cli), 'B', 'C');
		$posy+= $marge_line;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Datos R.C:  "), '0', 'L');
		$pdf->SetFont('');
		$pdf->MultiCell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->rc_cli), 'B', 'L');
		$posy+= $marge_line;
		$pdf->SetXY($posx,$posy);
		$pdf->SetFont('','B', $default_font_size + 1);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("E-MAIL:     "), '0', 'L');
		$pdf->SetFont('');
		$pdf->MultiCell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->mail_cli), 'B', 'L');
	}

	/**
	 *   	Show footer of page. Need this->emetteur object
     *
	 *   	@param	PDF			$pdf     			PDF
	 * 		@param	Object		$object				Object to show
	 *      @param	Translate	$outputlangs		Object lang for output
	 *      @param	int			$hidefreetext		1=Hide free text
	 *      @return	void
	 */
	function _pagefoot(&$pdf,$object,$outputlangs,$hidefreetext=0)
	{
		return pdf_pagefoot($pdf,$outputlangs,'PROJECT_FREE_TEXT',$this->emetteur,$this->marge_bottom,$this->marge_left,$this->page_hauteur,$object,0,$hidefreetext);
	}

	function _extrafields(&$project_id, $extrafields)
        {
            end($extrafields->attribute_label);
            $last_key = key($extrafields->attribute_label);
            $str_extrafields = "";
            foreach($extrafields->attribute_label as $key=>$label)
            {
                    if (strpos($key,'title') === false) {
                            if  ($last_key == $key){
                                    $str_extrafields .= $key." ";
                            }
                            else
                            {
                                    $str_extrafields .= $key.", ";
                            }
                    }
            }

            $sql = "SELECT ". $str_extrafields;
            $sql.= " FROM " . MAIN_DB_PREFIX . "projet_extrafields ";
            $sql.= " WHERE fk_object = ". $project_id;
            //dol_syslog(get_class($this)."::fetch sql=" . $sql, LOG_DEBUG);
            $resql = $this->db->query($sql);
            if ($resql)
            {
                    if ($this->db->num_rows($resql))
                    {
                            $obj = $this->db->fetch_object($resql);
                            foreach($extrafields->attribute_label as $key=>$label)
                            {
                                    $obj->$key = $extrafields->showOutputField($key,$obj->$key);
                            }

                            return $obj;
                    }
                    else
                    {
                            return 0;
                    }
            }
        }
}
