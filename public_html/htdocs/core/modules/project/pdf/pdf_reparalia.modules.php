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

class pdf_reparalia extends ModelePDFProjects
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
		$this->name = "reparalia";
		$this->description = $langs->trans("DocumentModelValclima");

		// Dimension page pour format A4
		$this->type = 'pdf';
		$formatarray=pdf_getFormat();
		$this->page_largeur = $formatarray['width'];
		$this->page_hauteur = $formatarray['height'];
		$this->format = array($this->page_largeur,$this->page_hauteur);

		$this->marge_left=isset($conf->global->MAIN_PDF_MARGIN_LEFT)?$conf->global->MAIN_PDF_MARGIN_LEFT:10;
		$this->marge_right=isset($conf->global->MAIN_PDF_MARGIN_RIGHT)?$conf->global->MAIN_PDF_MARGIN_RIGHT:10;
		$this->marge_top =isset($conf->global->MAIN_PDF_MARGIN_TOP)?$conf->global->MAIN_PDF_MARGIN_TOP:10;
		$this->marge_bottom =isset($conf->global->MAIN_PDF_MARGIN_BOTTOM)?$conf->global->MAIN_PDF_MARGIN_BOTTOM:0;

		$this->height = 7;
		$this->total_width = 190;
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
				

				$text_left = "Alser11/2012/v4                REPARALIA, S.A.U Camino del Cerro de los Gamos, 1 - Edificio, 6 - 28224 Pozuelo de Alarcón (Madrid). CIF:A-82451410, Inscrita en Registro Mercantil de Madrid, Tomo 14772, Libro 0, Folio12, Sección 8, Hoja M-245386";
				$pdf->SetTextColor(100,100,100);
				$pdf->SetFontSize($default_font_size - 3);
				$pdf->TextWithDirection(5, 290, $text_left, 'U');

				$extrafields_val = $this->_extrafields($object->id, $extrafields);		
				$this->_pagehead($pdf, $object, $extrafields_val, 1, $outputlangs);

				$pdf->SetFontSize($default_font_size - 2);

				$pdf->SetLineWidth(0.4);

				$pdf->SetFont('','B', $default_font_size);

				

				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 190, $this->height - 1, 3, '1234', 'DF');
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->Cell($this->total_width, $this->height - 1,'  Datos Cliente', 0, 1, 'L');

				$pdf->SetDrawColor(235, 220, 220);
				$pdf->SetTextColor(40,40,40);
				$pdf->SetFont('','');
				$height_DC = $this->height - 2;
				$pdf->SetY($pdf->GetY() + 1);
				$pdf->Cell(55, $height_DC,'Nombre y Apellidos/Razón Social:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(85, $height_DC,'', "B", 0, 'C');
				$pdf->SetFont('','');
				$pdf->Cell(15, $height_DC,'CIF/NIF:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(35, $height_DC,'', "B", 1, 'C');
				$pdf->SetFont('','');
				$pdf->SetY($pdf->GetY() + 1);

				$pdf->Cell(20, $height_DC,'Dirección:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(80, $height_DC,'', "B", 0, 'C');
				$pdf->SetFont('','');
				$pdf->Cell(20, $height_DC,'Localidad:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(70, $height_DC,'', "B", 1, 'C');
				$pdf->SetFont('','');
				$pdf->SetY($pdf->GetY() + 1);

				$pdf->Cell(25, $height_DC,'Código Postal:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(30, $height_DC, '', "B", 0, 'C');
				$pdf->SetFont('','');
				$pdf->Cell(15, $height_DC,'Provicia:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(50, $height_DC, '', "B", 0, 'C');
				$pdf->SetFont('','');
				$pdf->Cell(17, $height_DC,'Teléfono:', 0, 0, 'L');
				$pdf->SetFont('','U');
				$pdf->Cell(52, $height_DC, '', "B", 1, 'C');
				$pdf->SetFont('','');
				$pdf->SetY($pdf->GetY() + 1);

				$pdf->SetTextColor(255,255,255);
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 190, $this->height - 1, 3, '1234', 'DF');
				$pdf->Cell($this->total_width, $this->height -1,'  Descripción de los trabajadores', 0, 1, 'L');

				$pdf->SetDrawColor(235, 220, 220);
				$pdf->SetTextColor(40,40,40);
				$pdf->Cell($this->total_width, $this->height - 1,'', "B", 1, 'L');
				$pdf->Cell($this->total_width, $this->height - 1,'', "B", 1, 'L');
				$pdf->Cell($this->total_width, $this->height - 1,'', "B", 1, 'L');
				$pdf->Cell($this->total_width, $this->height - 1,'', "B", 1, 'L');

				$pdf->SetY($pdf->GetY() + 2);

				$pdf->SetTextColor(255,255,255);
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 190, $this->height - 1, 3, '1234', 'DF');
				$pdf->Cell($this->total_width, $this->height -1,'  Detalle de los trabajos según baremo', 0, 1, 'L');
				
				$pdf->SetDrawColor(235, 220, 220);
				$pdf->SetTextColor(40,40,40);;
				$pdf->Cell(25, $this->height,'Código', 0, 0, 'L');
				$pdf->Cell(5, $this->height,'', 0, 0);
				$pdf->Cell($this->total_width - (25 + 5)*2, $this->height,'Descripción del código', 0, 0, 'L');
				$pdf->Cell(5, $this->height,'', 0, 0);
				$pdf->Cell(25, $this->height,'Unidades', 0, 1, 'L');

				$pdf->Cell(25, $this->height - 4,'', 'B', 0, 'L');
				$pdf->Cell(5, $this->height - 4,'', 0, 0);
				$pdf->Cell($this->total_width - (25 + 5)*2, $this->height - 4,'', 'B', 0, 'L');
				$pdf->Cell(5, $this->height,'', 0, 0);
				$pdf->Cell(25, $this->height - 4,'', 'B', 1, 'L');

				for ($i=0; $i<8; $i++){
					$pdf->Cell(25, $this->height - 1,'', 'B', 0, 'L');
					$pdf->Cell(5, $this->height - 1,'', 0, 0);
					$pdf->Cell($this->total_width - (25 + 5)*2, $this->height - 1,'', 'B', 0, 'L');
					$pdf->Cell(5, $this->height - 1,'', 0, 0);
					$pdf->Cell(25, $this->height - 1,'', 'B', 1, 'L');
				}
				
				$pdf->SetY($pdf->GetY() + 3);

				$pdf->Rect($pdf->GetX(), $pdf->GetY() , 3, 3);
				$pdf->SetX($pdf->GetX() + 3);
				$pdf->Cell(35, 3,'Control de franquicia', 0, 0, 'L');
				$pdf->Cell(20, 3,'', "B", 0, 'L');
				$pdf->Cell(15, 3,'euros', 0, 1, 'L');

				$pdf->SetY($pdf->GetY() + 2);

				$pdf->SetTextColor(255,255,255);
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 190, $this->height - 1, 3, '1234', 'DF');
				$pdf->Cell($this->total_width, $this->height - 1,'  Información adicional', 0, 1, 'L');

				$pdf->SetXY($pdf->GetX() + 4, $pdf->GetY() - 1);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), $this->total_width-5, 12, 3, '34', 'D');
				$pdf->Cell($this->total_width - 5, 12, '', 0, 1, 'L');

				$pdf->SetY($pdf->GetY() + 2);

				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 190, $this->height - 1, 3, '1234', 'DF');
				$pdf->Cell($this->total_width, $this->height - 1,'  Control de albarán', 0, 1, 'L');

				$pdf->SetXY($pdf->GetX() + 4, $pdf->GetY() - 1);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), $this->total_width-5, 12, 3, '34', 'D');
				$pdf->Cell($this->total_width - 5, 12, '', 0, 1, 'L');


				$pdf->SetY($pdf->GetY() + 1);

				$pdf->Rect($pdf->GetX(), $pdf->GetY() + 1 , 3, 3);
				$pdf->SetX($pdf->GetX() + 3);
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(35, 3,'Marque en caso de que el trabajo sea realizado a un particular', 0, 1, 'L');
				$pdf->Rect($pdf->GetX(), $pdf->GetY() + 1 , 3, 3);
				$pdf->SetX($pdf->GetX() + 3);
				$pdf->Cell(35, 3,'Marque en caso de que la vivienda tenga una antigüedad superior a 2 años', 0, 1, 'L');

				$pdf->SetY($pdf->GetY() + 2);

				$safeX = $pdf->GetX();
				$safeY = $pdf->GetY();

				$pdf->SetTextColor(255,255,255);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 70, $this->height - 1, 3, '1234', 'DF');
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->Cell(70, $this->height - 1,'  Conforme cliente**', 0, 1, 'L');

				$pdf->SetXY($pdf->GetX() + 4, $pdf->GetY() - 1);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 70-5, 26, 3, '34', 'D');
				$pdf->SetDrawColor(0, 0, 0);

				$txt = "** Antes de firmar compruebe que la información describe correctamente la reparación realizada así como el material y tiempo empleado\n\n\n\n\n\n\n\n   Nombre y apellidos";
				$pdf->SetFontSize(5);
				$pdf->SetXY($pdf->GetX(), $pdf->GetY() + 1);
				$pdf->SetFillColor(255,255,255);
				$pdf->SetTextColor(100,100,100);
				$pdf->MultiCell(70 - 5, 20, $txt, 0, 1, 'L');
				
				$pdf->SetFontSize($default_font_size);
				$pdf->SetXY($this->marge_left+70+5, $safeY);

				$pdf->SetTextColor(255,255,255);
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->SetFillColor(200, 0, 0);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 16, $this->height + 2 - 1, 4, '14', 'DF');
				$pdf->SetFont('','B');
				$pdf->Cell(17, $this->height +2 - 1,"    Nº PR ", 0, 0, 'C');
				$pdf->SetFont('','');
				$pdf->SetDrawColor(200, 200, 200);
				$pdf->Cell(9, $this->height +2 - 1,' ', "TBR", 0, 'C');
				$pdf->Cell(9, $this->height +2 - 1,' ', "TBR", 0, 'C');
				$pdf->Cell(9, $this->height +2 - 1,' ', "TBR", 0, 'C');
				$pdf->Cell(9, $this->height +2 - 1,' ', "TBL", 0, 'C');
				$pdf->SetDrawColor(200, 0, 0);
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 8, $this->height + 2 - 1, 4, '23', 'DF');
				$pdf->Cell(7, $this->height +2 - 1,'', 0, 0, 'L' );

				$pdf->SetX($pdf->GetX()+5);

				$pdf->SetFontSize(9);


				$pdf->RoundedRect($pdf->GetX()+ 4, $pdf->GetY() + 2, 50-5, 29, 3, '34', 'D');
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 50, ($this->height - 2) * 2, 5, '1234', 'DF');
				$pdf->Cell(50, $this->height - 2,"Fecha finalización", 0, 2, 'C');
				$pdf->Cell(50, $this->height - 2,"del trabajo", 0, 2, 'C');
				$pdf->SetX($pdf->GetX()+3);
				$pdf->SetTextColor(220,220,220);
				$pdf->SetXY($pdf->GetX(), $pdf->GetY()+2);
				$pdf->Cell(50, $this->height+8,"     ______/______/________", 0, 2, 'L');
				$pdf->SetFontSize(6);
				$pdf->SetTextColor(80,80,80);
				$pdf->Cell(35, $this->height - 3,"      Hora finalización:", 0, 1, 'L');

				$pdf->SetTextColor(255,255,255);
				$pdf->SetXY($pdf->GetX() + 75, $pdf->GetY()-21);
				$pdf->RoundedRect($pdf->GetX()+ 4, $pdf->GetY() + 1, 60-5, 20, 3, '234', 'D');
				$pdf->RoundedRect($pdf->GetX(), $pdf->GetY(), 30, ($this->height - 2) * 2, 5, '1234', 'DF');
				$pdf->SetFont('','B');
				$pdf->SetFontSize($default_font_size - 2);
				$pdf->Cell(30, $this->height - 2,"Fecha del", 0, 2, 'C');
				$pdf->Cell(30, $this->height - 2,"profesional", 0, 2, 'C');
				$pdf->SetFont('','');

				$pdf->SetXY($this->marge_left + 5, $pdf->GetY()+12);
				$pdf->SetFontSize(6);
				$pdf->SetTextColor(40,40,40);
				$txt = "*El destinatario es persona física no actúa como empresario o profesional y utiliza la vivienda a la que se refieren las obras para su uso particular.";
				$pdf->Cell($this->total_width, $this->height - 2, $txt, 0, 1, 'l');

				$pdf->SetDrawColor(235, 220, 220);
				$pdf->SetTextColor(80,80,80);


				global $langs,$conf,$mysoc;
				// Logo
				$logo=$conf->mycompany->dir_output.'/logos/footer_mojamuter.png';

				if ($mysoc->logo)
				{
					if (is_readable($logo))
					{
						$height=pdf_getHeightForLogo($logo);
					    $pdf->Image($logo, $pdf->GetX(), $pdf->GetY(), 190, 30);	// width=0 (auto)
					}
					else
					{
						$pdf->SetTextColor(200,0,0);
						$pdf->SetFont('','B', $default_font_size - 2);
						$pdf->MultiCell(100, 3, $langs->transnoentities("ErrorLogoFileNotFound",$logo), 0, 'L');
						$pdf->MultiCell(100, 3, $langs->transnoentities("ErrorGoToModuleSetup"), 0, 'L');
					}
				}
				else $pdf->MultiCell(100, 4, $outputlangs->transnoentities($this->emetteur->name."asdasd"), 0, 'L');

				$pdf->SetXY($pdf->GetX(), $pdf->GetY()+33);
				$pdf->SetFontSize(5);
				$foot_txt = "Los datos personales que constan en este documento, serán incorporados al fichero de \"clientes\" de REPARALIA,SAU, con la finalidad de gestionar la prestación del servicio ofrecido por REPARALIA,SAU, por lo que dichos datos no serán comunicados ni cecidos a terceros sin su expreso consentimiento. De conformidad con lo dispuesto en la Ley Orgánica 15/1999, de Protección de Datos asi como en su Reglamento de desarrollo, le informamos que puede ejercer los derechos de acceso, rectificación, cancelación y oposición dirigiendose por escrito, a REPARALIA SAU. Camino del Cerro de los Gamos 1, Edificio 6. 28.224-Pozuelo de Alarcón (Madrid).'";
				$pdf->SetFillColor(255, 255, 255);
				$pdf->MultiCell($this->total_width + 5, 25, $foot_txt, 0, 'L');


				$pdf->SetXY(0, 0);
				/*
				 * Pied de page
				 */
				$this->_pagefoot($pdf,$object,$outputlangs);
				if (method_exists($pdf,'AliasNbPages')) $pdf->AliasNbPages();

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

		$pdf->SetXY($this->marge_left, 5);

		// Logo
		$logo=$conf->mycompany->dir_output.'/logos/reparalia_logo.png';
		if ($mysoc->logo)
		{
			if (is_readable($logo))
			{
				$height=pdf_getHeightForLogo($logo);
			    $pdf->Image($logo, $this->marge_left+125, $pdf->getY+5 , 65, 25);	// width=0 (auto)
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

		$pdf->SetFontSize($default_font_size);
		$pdf->SetTextColor(255,255,255);
		$pdf->SetFillColor(200, 0, 0);
		$pdf->SetDrawColor(200, 0, 0);

		$widt_name = 20;
		$widt_letter = 6;
		$height_header_fields = $this->height + 1;
		$pdf->Cell($widt_name, $height_header_fields, "Nº Servicio", 1, 0, 'L', true);
		for ($i=0; $i<7; $i++){
			if ($i != 6) {
				$pdf->Cell($widt_letter, $height_header_fields, "123", 1, 0, 'C');
			}else{
				$pdf->Cell($widt_letter, $height_header_fields, "", 1, 1, 'C');
			}
		}
		$pdf->SetY($pdf->GetY() + 1);
		$pdf->Cell($widt_name, $height_header_fields, "Compañía", 1, 0, 'L', true);
		for ($i=0; $i<14; $i++){
			if ($i != 13){
				$pdf->Cell($widt_letter, $height_header_fields, "", 1, 0, 'C');
			}else{
				$pdf->Cell($widt_letter, $height_header_fields, "", 1, 1, 'C');
			}
		}
		$pdf->SetY($pdf->GetY() + 1);
		$pdf->Cell($widt_name, $height_header_fields, "Ref./Póliza", 1, 0, 'L', true);
		for ($i=0; $i<17; $i++){
			if ($i != 16){
				$pdf->Cell($widt_letter, $height_header_fields, "", 1, 0, 'C');
			}else{
				$pdf->Cell($widt_letter, $height_header_fields, "", 1, 1, 'C');
			}
		}
		$pdf->SetY($pdf->GetY() + 2);
		
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
		// return pdf_pagefoot($pdf,$outputlangs,'PROJECT_FREE_TEXT',$this->emetteur,$this->marge_bottom,$this->marge_left,$this->page_hauteur,$object,0,$hidefreetext);
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
		dol_syslog(get_class($this)."::fetch sql=" . $sql, LOG_DEBUG);
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

