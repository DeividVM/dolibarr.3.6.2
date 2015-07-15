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
class pdf_parte_llaves_aktua_banesto extends ModelePDFProjects
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
		$this->name = "parte llaves Aktua Banesto";
		$this->description = $langs->trans("DocumentModelBaleine");

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

		$this->deefault_height = 7;
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

				$extrafields_val = $this->_extrafields($object->id, $extrafields);
				$this->_pagehead($pdf, $object, $extrafields_val, 1, $outputlangs);

				// parte de llaves
				$total_width = 190;
				$default_marge_line = 7;
				$pdf->SetFont('', '', $default_font_size);

				$pdf->Cell(0, 10, "", 0, 1);
				$pdf->SetFont('');

				$default_width = 50;
				
				$X_second_col = $pdf->GetX();
				$Y_second_col = $pdf->GetY();

				$pdf->SetFont('', 'BU', $default_font_size);
				$pdf->Cell($default_width, $default_marge_line, "REF. DEL INMUEBLE", 0, 2, 'L');
				$pdf->SetFont('', 'B', $default_font_size +2);
				$pdf->Cell($default_width - 10, $default_marge_line + 3, $extrafields_val->ref_K_cli, 1, 2, 'C');

				$pdf->Cell($default_width, 3, "", 0, 1); // marge

				$pdf->SetFont('', 'BU', $default_font_size);
				$pdf->Cell($default_width, $default_marge_line-3, "Fecha realización", 0, 2, 'L');
				$pdf->Cell($default_width, $default_marge_line-3, "trabajos:", 0, 2, 'L');
				$pdf->Cell(0, 1, "", 0, 1); // marge
				$pdf->SetFont('');

				global $langs,$conf,$mysoc;
				// Logo
				$logo=$conf->mycompany->dir_output.'/logos/calendar.png';

				if ($mysoc->logo)
				{
					if (is_readable($logo))
					{
						$height=pdf_getHeightForLogo($logo);
					    $pdf->Image($logo, $pdf->GetX() + $default_width - 6 , $pdf->GetY()+1, 5, 5);	// width=0 (auto)
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
				$pdf->Cell($default_width, $default_marge_line, "", 1, 2, 'C');

				$pdf->Cell($default_width, 10, "", 0, 1); // marge

				$pdf->SetFont('','BU');
				$pdf->Cell($default_width, $default_marge_line, "FECHA LLAVES GESTOR", 0, 0, 'L');
				$pdf->SetX($default_width + ($this->marge_left * 4 ));
				$pdf->Cell($default_width, $default_marge_line, "FECHA LLAVES API", 0, 1, 'L');
				$pdf->SetFont('');
				// Logo
				$logo=$conf->mycompany->dir_output.'/logos/calendar.png';

				if ($mysoc->logo)
				{
					if (is_readable($logo))
					{
						$height=pdf_getHeightForLogo($logo);
					    $pdf->Image($logo, $pdf->GetX() + $default_width - 6 , $pdf->GetY()+1, 5, 5);	// width=0 (auto)
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
				$pdf->Cell($default_width, $default_marge_line, "", 1, 0, 'C');
				
				$pdf->SetX($default_width + ($this->marge_left * 4 ));
				// Logo
				$logo=$conf->mycompany->dir_output.'/logos/calendar.png';

				if ($mysoc->logo)
				{
					if (is_readable($logo))
					{
						$height=pdf_getHeightForLogo($logo);
					    $pdf->Image($logo, $pdf->GetX() + $default_width - 6 , $pdf->GetY()+1, 5, 5);	// width=0 (auto)
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
				$pdf->Cell($default_width, $default_marge_line, "", 1, 2, 'C');

				$pdf->SetFont('','BU');
				$pdf->Cell($default_width, $default_marge_line, "NOMBRE DEL API:", 0, 2, 'L');
				$pdf->SetFont('');
				$pdf->Cell($default_width + 30, $default_marge_line, "", 1, 1, 'C');

				$pdf->SetXY($default_width + ($this->marge_left * 2 ), $Y_second_col);

				$pdf->SetFont('', 'BU', $default_font_size);
				$pdf->Cell($default_width, $default_marge_line, "DIRECCIÓN DEL INMUEBLE:", 0, 2, 'L');
				$pdf->SetFont('');
				$pdf->SetFillColor(255,255,255);
				$pdf->MultiCell($total_width - ($default_width + $this->marge_left), 
								$default_marge_line*4, 
								$extrafields_val->dir_cli."\n".$extrafields_val->loc_cli."\n".$extrafields_val->zipcode_cli, 1, 'L', true);
				
				$pdf->Cell(0, 55, "", 0, 1, 'L'); // marge
				$pdf->SetX($pdf->GetX() + $this->marge_left * 2);

				$pdf->SetFont('', 'BU', $default_font_size);
				$pdf->Cell(60, $default_marge_line-3, "MARCAR LLAVES", 0, 2, 'L');
				$pdf->Cell(60, $default_marge_line-3, "ENTREGADAS:", 0, 2, 'L');
				$pdf->Cell(0, 2, "", 0, 2); // marge
				$pdf->SetFont('');

				$pdf->SetX($pdf->GetX() + 4);
				
				//$pdf->SetTextColor(255,255,255);
				$pdf->SetDrawColor(150, 150, 150);
				$pdf->SetFillColor(220, 220, 220);

				$pdf->SetLineWidth(0.2);
				$pdf->Rect($pdf->GetX() - 3, $pdf->GetY() + 2 , 2.5, 2.5, 'DF');
				$pdf->Cell($default_width, $default_marge_line, "Copia vivienda", 0, 0, 'L');
				$pdf->Rect($pdf->GetX() - 3, $pdf->GetY() + 2 , 2.5, 2.5, 'DF');
				$pdf->Cell($default_width, $default_marge_line, "Copia portal", 0, 0, 'L');
				$pdf->Rect($pdf->GetX() - 3, $pdf->GetY() + 2 , 2.5, 2.5, 'DF');
				$pdf->Cell($default_width, $default_marge_line, "Copia garaje", 0, 1, 'L');
				
				$pdf->SetX($pdf->GetX() + $this->marge_left * 2 + 4);

				$pdf->Rect($pdf->GetX() - 3, $pdf->GetY() + 2 , 2.5, 2.5, 'DF');
				$pdf->Cell($default_width, $default_marge_line, "Copia Trastero", 0, 0, 'L');
				$pdf->Rect($pdf->GetX() - 3, $pdf->GetY() + 2 , 2.5, 2.5, 'DF');
				$pdf->Cell($default_width, $default_marge_line, "Copia Zonas Comunes", 0, 0, 'L');
				$pdf->Rect($pdf->GetX() - 3, $pdf->GetY() + 2 , 2.5, 2.5, 'DF');
				$pdf->Cell($default_width, $default_marge_line, "Otros", 0, 1, 'L');
				
				$pdf->SetDrawColor(225,225,225);
				$pdf->SetLineWidth(0.4);
				$pdf->Cell($total_width, 10, "", 0, 1); // marge

				$X_second_col = $pdf->GetX();
				$Y_second_col = $pdf->GetY();
				$marge_col = 2;
				$pdf->SetFont('','U');
				$pdf->MultiCell(($total_width / 2) - $marge_col, 40, "GESTOR", 1, 'L');
				$pdf->SetXY($X_second_col + ($total_width / 2) + $marge_col, $Y_second_col);
				$pdf->MultiCell(($total_width / 2) - $marge_col, 40, "API", 1, 'L');
				$pdf->SetFont('','');
				$pdf->Cell($total_width, 4, "", 0, 1, 'L'); // marge
				$pdf->MultiCell($total_width, 60, "", 1, 'L');

				
				/*
				 * Pied de page
				 */
				$this->_pagefoot($pdf,$object,$outputlangs);
				if (method_exists($pdf,'AliasNbPages')) $pdf->AliasNbPages();
				
				$this->_etiqueta_parte_llaves($pdf, $object, $extrafields_val, 1, $outputlangs);
				
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
 		

		$pdf->SetXY($this->marge_right, $this->marge_top);
		$pdf->SetTextColor(115,115,115);
		$total_width = 190;
		$pdf->SetFont('','B');
		//$pdf->SetXY($pdf->GetX + (190/2) , $this->marge_top);
		$tittle_width = 90;
		$pdf->SetFont('', 'BU', $default_font_size + 5 );

		global $langs,$conf,$mysoc;
		// Logo
		$logo=$conf->mycompany->dir_output.'/logos/titulo_reparalia.png';

		if ($mysoc->logo)
		{
			if (is_readable($logo))
			{
				$height=pdf_getHeightForLogo($logo);
			    $pdf->Image($logo, $pdf->GetX(), $pdf->GetY()+3, $tittle_width, $this->deefault_height*2);	// width=0 (auto)
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

		$pdf->Cell($tittle_width +10, $this->deefault_height*2, "", 0, 0, 'L');
		
		$pdf->SetFont('', 'BU', $default_font_size);
		$pdf->Cell(190 - $tittle_width - 10, $this->deefault_height, "Nº DE SERVICIO", 0, 2, 'C');
		$pdf->SetFont('', '', $default_font_size);
		$pdf->SetDrawColor(225,225,225);
		$pdf->SetLineWidth(0.4);

		$pdf->Cell($tittle_width, $this->deefault_height, $object->title, 1, 1, 'C');
		$pdf->SetFont('');

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
	function _etiqueta_parte_llaves(&$pdf, $object, $extrafields, $showaddress, $outputlangs)
	{
		global $langs,$conf,$mysoc;

		$pdf->AddPage();
		$pdf->SetXY($this->marge_right, $this->marge_top);
		$total_width = 190;
		$pdf->SetFont('','B');

		$pdf->SetFont('', '', 8);
		$width_cell = 42;
		$height_cell = 14;
		$pdf->SetDrawColor(125,125,125);
		$pdf->SetLineWidth(0.5);

		$clau = $extrafields->ref_K_cli.$extrafields->macro_cli;
		$direccion = $extrafields->dir_cli."\n".$extrafields->loc_cli;
		$pdf->SetTextColor(0,0,0);
		$pdf->SetX(75);

		for ($i=1; $i<9; $i++){
			$pdf->MultiCell($width_cell, $height_cell, " LLAVE - ".$i." | ".$clau."\n".$direccion, 1, 'C');
			$pdf->SetXY(75, $pdf->GetY() + 16);
		}


		/*
		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		$pdf->Cell($width_cell, $height_cell, "", 1, 1, 'C');
		
		$pdf->Cell(0, 1, "", 0, 1, 'C');

		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		$pdf->Cell($width_cell, $height_cell, "", 1, 0, 'C');
		$pdf->SetX($pdf->GetX() + 2);
		*/
		$pdf->SetFont('', '', $default_font_size);

		/*
		 * Pied de page
		 */
		$this->_pagefoot($pdf,$object,$outputlangs);
		if (method_exists($pdf,'AliasNbPages')) $pdf->AliasNbPages();
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
		//return pdf_pagefoot($pdf,$outputlangs,'PROJECT_FREE_TEXT',$this->emetteur,$this->marge_bottom,$this->marge_left,$this->page_hauteur,$object,0,$hidefreetext);
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
