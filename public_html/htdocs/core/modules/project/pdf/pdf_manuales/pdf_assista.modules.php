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

class pdf_assista extends ModelePDFProjects
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
		$this->name = "assista";
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
				$style3 = array('width' => 0.3, 'cap' => 'butt', 'join' => 'miter', 'dash' => '3, 5', 'color' => array(255, 0, 0));
				
				$marge = 2;
				$pdf->SetFillColor(181, 181, 181);
				//***********************************************************************************************

				$tab_top = 50;
				$tab_height = 200;
				$tab_top_newpage = 40;
				$tab_height_newpage = 210;

				$pdf->SetTextColor(209,12,29);
				$pdf->SetFont('','B');
				$pdf->Cell(190,3,'',0,1, 'L');
				$pdf->Cell(190,7,'FECHAS',0,1, 'L');

				$pdf->SetFont('','');
				$pdf->Cell(20, 5, $outputlangs->transnoentities("Fecha aviso: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(80, 5, dol_print_date($object->date_start,'day'), 'B', 0, 'C');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(20, 5, $outputlangs->transnoentities("Fecha inicio: "), 0, 0, 'L');
				$pdf->Cell(70, 5, "",'B', 1, 'C');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(20, 5, $outputlangs->transnoentities("Fecha visita: "), 0, 0, 'L');
				$pdf->Cell(80, 5, "", 'B', 0, 'C');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(20, 5, $outputlangs->transnoentities("Fecha fin: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(70, 5, "", 'B', 1, 'C');

				//***********************************************************************************************
				
				$pdf->SetTextColor(209,12,29);
				$pdf->SetFont('','B');
				$pdf->Cell(190,10,'DATOS DEL SERVICIO:',0,1, 'L');

				$pdf->SetTextColor(209,12,29);
				$pdf->SetFont('','');
				$pdf->Cell(23, 5, $outputlangs->transnoentities("Nº del servicio: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(167, 5, $object->title, 'B', 1, 'L');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(20, 5, $outputlangs->transnoentities("Descripción: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(170, 5, $object->description, 'B', 1, 'L');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(25, 5, $outputlangs->transnoentities("Tipo de servicio: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(165, 5, $extrafields_val->ser_cli, 'B', 1, 'L');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(20, 5, $outputlangs->transnoentities("Tramitadora: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->Cell(170, 5, "", 'B', 1, 'L');
				$pdf->SetTextColor(209,12,29);
				$pdf->Cell(33, 5, $outputlangs->transnoentities("Nota de la tramitadora: "), 0, 0, 'L');
				$pdf->SetTextColor(0,0,0);
				$pdf->SetFontSize($default_font_size - 2);
				$pdf->Cell(159, 5, $extrafields_val->tra_cli, 'B', 1, 'L');

				$pdf->SetTextColor(209,12,29);
				$pdf->SetFont('','B');
				$pdf->Cell(190,10,'TRABAJOS REALIZADOS / MATERIALES EMPLEADOS  (IMPRESCINDIBLE SU CUMPLEMENTACIÓN)',0,2, 'C');

				for ($i=0; $i<7; $i++){
					$pdf->Line($pdf->GetX(), $pdf->GetY(), $pdf->GetX()+190, $pdf->GetY(), $style3);
					$pdf->SetXY($this->marge_left, $pdf->GetY()+7);
				}

				//***********************************************************************************************
				
				$pdf->Cell(65,7,'M.O INCREMENTO NOCTURNO/FESTIVO: ',0,0, 'L');
				$pdf->Cell(120,5,'','B',1);

				$pdf->Cell(190,7, '', 0, 1);

				//***********************************************************************************************

				$pdf->SetFont('','7');

				$str_msg = "En prueba de conformidad con los trabajos realizados, materiales empleados y/o el importe final de los mismos, y en caso de que corresponda,";
				$str_msg.= "firmo el presente documento. En caso de ser hoja de presupuesto, el mismo se considera aceptado una vez haya sido firmada la conformidad. Y la validez";
				$str_msg.= "del mismo siempre será de tres meses desde su realización.";

				$pdf->MultiCell(190,12, $str_msg, 0, "L");
				$pdf->MultiCell(190,5, 'R.D.L. 6/2010, art 2, aplicación IVA 8% siempre que:', 0, "L");
				$pdf->MultiCell(190,5, '- Persona fisica o Comunidad de propietarios', 0, "L");
				$pdf->MultiCell(190,5, '- No actúe como empresario o profesional', 0, "L");
				$pdf->MultiCell(190,5, '- Vivienda de uso particulas y su construcción o rehabilitación haya concluido al menos 2 años antes del inicio de las obras.', 0, "L");
				$style2 = array('width' => 0.2, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(255, 0, 0));

				$pdf->Rect($pdf->GetX()+45, $pdf->GetY(), 5,5, 'D', array('all' => $style2));
				$pdf->SetX($pdf->GetX()+45+5);
				$pdf->Cell(45, 5, $outputlangs->transnoentities("CUMPLO LOS REQUISITOS"), 0, 0, 'L');

				$pdf->Rect($pdf->GetX(), $pdf->GetY(), 5,5);
				$pdf->SetX($pdf->GetX()+5);
				$pdf->Cell(45, 5, $outputlangs->transnoentities("NO CUMPLO LOS REQUISITOS"), 0, 1, 'L');

				$pdf->Cell(190,5, '', 0, 1);

				//***********************************************************************************************
				
				$height = 7;

				$pdf->Rect($pdf->GetX(), $pdf->GetY(), 190/3, $height*4,'D', array('all' => $style3));
				$pdf->Rect($pdf->GetX(), $pdf->GetY(), (190/3)*2, $height*4);
				$pdf->Rect($pdf->GetX(), $pdf->GetY(), (190/3)*3, $height*4);
				$pdf->SetFont('','B');	

				$pdf->Cell(190/3*2,$height,'FECHA:_____/_____/______',0,0, 'L');
				$pdf->Cell(190/3*3,$height,'SUMA',0,1, 'L');
				$pdf->Cell(190/3*2,$height,'',0,0, 'L');
				$pdf->Cell(190/3*3,$height,'%IVA',0,1, 'L');
				$pdf->Cell(190,$height,'',0,1, 'L');
				$pdf->Cell(190/3,$height,'FIRMA Y DNI DEL CLIENTE, CONFORME',0,0, 'L');
				$pdf->Cell(190/3,$height,'NOMBRE Y FIRMA DEL OPERARIO',0,0, 'L');
				$pdf->Cell(190/3,$height,'TOTAL: ',0,1, 'L');

				//***********************************************************************************************

				$pdf->SetFont('',3);
				$pdf->SetTextColor(238,173,172);

				$str_msg2 = 'Los datos de carácter personal aportados, para los casos en que Ud. sea una persona física, o en el caso';
				$str_msg2.= 'de actuar en nombre y representación de una comunidad o persona jurídica, son incluidos en un fichero titularidad';
				$str_msg2.= 'de ASSISTA FACILITY SERVICES, S.A.;ASSISTACASA 2005 S.L, BLUEDEC S.L.,CONSTRUCMAN S.L cuya finalidad es la gestión';
				$str_msg2.=	'de clientes, administrativa y contable derivada y, en particula, a estos efectos para el control y supervisión de los';
				$str_msg2.= 'trabajos realizados por nuestros operarios y prueba de su conformidad con esta labor. Los datos no serán cecidos o';
				$str_msg2.= 'comunicados a terceros salvo en los supuestos previstos, según Ley. De conformidad con la Ley Orgánica 15/1999, de Protección';
				$str_msg2.= 'de Datos de Carácter Personal podrá ejercitar los derechos de acceso, rectificación, cancelación y oposición, presentando o enviando';
				$str_msg2.= 'un escrito, acompañado de fotocopia de su D.N.I., a ASSISTACASA 2005 S.L; - LOPD CLIENTES C/Cronista Carreres, 10 Bajo 46003 Valencia.';

				$pdf->Cell(190,3,'',0,1, 'L');
				$pdf->MultiCell(190,12, $str_msg2, 0, "J");


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
		$logo=$conf->mycompany->dir_output.'/logos/assista_logo.jpg';
		if ($mysoc->logo)
		{
			if (is_readable($logo))
			{
				$height=pdf_getHeightForLogo($logo);
			    $pdf->Image($logo, $this->marge_left+135, $posy, 0, 55);	// width=0 (auto)
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

		$pdf->SetFont('','', 10);
		$pdf->SetXY($posx,$posy);

		$marge_line = 5;
		$pdf->SetTextColor(209,12,29);
		$pdf->SetDrawColor(209,12,29);
		$width_field_name = 27;
		$width_field_value = $marge_header - $width_field_name - 2;
		$name_short_width = 12;
		$fields_2row_width = ($width_field_value - $name_short_width) / 2;
		
		$pdf->Rect($this->marge_left, $posy+13, $marge_header+4, ($marge_line * 7) + 1 + 4);
		$pdf->SetXY($this->marge_left+2,$this->marge_top+15);

		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Nombre: "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->nom_cli), 'B', 1, 'L');
		$posy+= $marge_line;
		$pdf->SetX($pdf->GetX()+2);
		$pdf->SetTextColor(209,12,29);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Dirección:  "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->dir_cli), 'B', 1, 'L');
		$posy+= $marge_line;
		$pdf->SetX($pdf->GetX()+2);
		$pdf->SetTextColor(209,12,29);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Localidad:  "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->loc_cli), 'B', 1, 'L');
		$posy+= $marge_line;
		$pdf->SetX($pdf->GetX()+2);
		$pdf->SetTextColor(209,12,29);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Provincia:  "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->prov_cli), 'B', 1, 'L');
		$posy+= $marge_line;
		$pdf->SetX($pdf->GetX()+2);
		$pdf->SetTextColor(209,12,29);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Teléfono:  "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->tel_cli), 'B', 1, 'L');
		$posy+= $marge_line;
		$pdf->SetX($pdf->GetX()+2);
		$pdf->SetTextColor(209,12,29);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("Tel. Móvil:  "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, $outputlangs->convToOutputCharset($extrafields->mov_cli), 'B', 1, 'L');
		$posy+= $marge_line;
		$pdf->SetX($pdf->GetX()+2);
		$pdf->SetTextColor(209,12,29);
		$pdf->Cell($width_field_name, $marge_line, $outputlangs->transnoentities("E-mail:  "), 0, 0, 'L');
		$pdf->SetTextColor(0,0,0);
		$pdf->Cell($width_field_value, $marge_line, str_replace("&nbsp;", '', $extrafields->mail_cli), 'B', 1, 'L');
		$posy+= $marge_line;
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

