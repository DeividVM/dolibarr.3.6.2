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
 *  \file       htdocs/core/modules/project/pdf/pdf_baleine.modules.php
 *  \ingroup    project
 *  \brief      Fichier de la classe permettant de generer les projets au modele Baleine
 *  \author     Regis Houssin
 */

require_once DOL_DOCUMENT_ROOT.'/core/modules/project/modules_project.php';
require_once DOL_DOCUMENT_ROOT.'/projet/class/project.class.php';
require_once DOL_DOCUMENT_ROOT.'/projet/class/task.class.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/company.lib.php';
require_once DOL_DOCUMENT_ROOT.'/core/lib/pdf.lib.php';


/**
 *  \class      pdf_baleine
 *  \brief      Classe permettant de generer les projets au modele Baleine
 */

class pdf_sabadell_template extends ModelePDFProjects
{
    var $emetteur;  // Objet societe qui emet

    /**
     *  Constructor
     *
     *  @param      DoliDB      $db      Database handler
     */
    function __construct($db)
    {
        global $conf,$langs,$mysoc;

        $langs->load("main");
        $langs->load("projects");
        $langs->load("companies");

        $this->db = $db;
        $this->name = "sabadell_template";
        $this->description = $langs->trans("Sabadell PDF");

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
     *  Fonction generant le projet sur le disque
     *
     *  @param  Project     $object         Object project a generer
     *  @param  Translate   $outputlangs    Lang output object
     *  @return int                         1 if OK, <=0 if KO
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
                //$pdf=new FPDF('L','mm','A4');
                $pdf=pdf_getInstance('A4', 'mm', 'L');
                $default_font_size = pdf_getPDFFontSize($outputlangs);  // Must be after pdf_getInstance
                $heightforinfotot = 50; // Height reserved to output the info and total part
                $heightforfreetext= (isset($conf->global->MAIN_PDF_FREETEXT_HEIGHT)?$conf->global->MAIN_PDF_FREETEXT_HEIGHT:5); // Height reserved to output the free text on last page
                $heightforfooter = $this->marge_bottom + 8; // Height reserved to output the footer (value include bottom margin)
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
                
                global $langs,$conf,$mysoc;
                $logo=$conf->mycompany->dir_output.'/pdf/sabadell_template.jpg';
                if ($mysoc->logo)
                {
                    if (is_readable($logo))
                    {
                        $height=pdf_getHeightForLogo($logo);
                        $pdf->Image($logo, 0, 0, 295, 200);  // width=0 (auto)
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

                $pdf->SetFontSize($default_font_size - 2);

                $pdf->SetXY(28, 29);
                $pdf->Cell(35, $marge_line, $extrafields_val->pj_gst_slct, 0, 0, 'L');
                $pdf->SetXY(80, 29);
                $pdf->Cell(40, $marge_line, dol_print_date($object->date_start,'day'), 0, 1, 'L');

                $pdf->SetXY(30, 36);
                $pdf->Cell(40, $marge_line, $extrafields_val->loc_cli, 0, 0, 'L');
                $pdf->SetXY(85, 36);
                $pdf->Cell(50, $marge_line, $extrafields_val->macro_cli, 0, 1, 'L');


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
     *  @param  PDF         $pdf            Object PDF
     *  @param  Object      $object         Object to show
     *  @param  int         $showaddress    0=no, 1=yes
     *  @param  Translate   $outputlangs    Object lang for output
     *  @return void
     */
    function _etiqueta_parte_llaves(&$pdf, $object, $extrafields, $showaddress, $outputlangs)
    {
        global $langs,$conf,$mysoc;

        $pdf->AddPage();
        $pdf->SetXY($this->marge_right, $this->marge_top);
        $total_width = 190;
        $pdf->SetFont('','B');

        $pdf->SetFont('', '', $default_font_size );
        $width_cell = 47;
        $height_cell = 13;
        $pdf->SetDrawColor(125,125,125);
        $pdf->SetLineWidth(0.5);

        $clau = $extrafields->ref_K_cli.$extrafields->macro_cli;
        $direccion = $extrafields->dir_cli."\n".$extrafields->loc_cli;
        $pdf->SetTextColor(0,0,0);

        for ($i=1; $i<9; $i++){
            $pdf->MultiCell($width_cell, $height_cell, " LLAVE - ".$i." | ".$clau."\n".$direccion, 1, 'C');
            $pdf->SetXY($pdf->GetX(), $pdf->GetY() + 2);
        }

        $pdf->SetFont('', '', $default_font_size);

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
