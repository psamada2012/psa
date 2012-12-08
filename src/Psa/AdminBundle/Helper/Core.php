<?php

namespace Psa\AdminBundle\Helper;


/**
 * Core Helper.
 *
 * @author janiico@yahoo.fr
 */
class Core {

    /**
     * Upload d'un fichier
     * @param array $aParam :inputName, directory, tailleMaxi, allowedExtension
     * @return mixt false|array 
     */
    public function uploadFile(array $aParam)
    {
       //Upload Configuration: 
        extract($aParam);

        //File Infos
        $tmp_file = $_FILES["$inputName"]['tmp_name'];
        $file     = $_FILES["$inputName"]['name'];
        
        if(isset($inputName2)){
            $tmp_file   =   $tmp_file["$inputName2"];
            $file       =   $file["$inputName2"];
        }
        
        $taille = filesize($tmp_file);
        $extension = strrchr($file, '.');

        //Data verification
        $aAllowedExtensions = explode(',', $allowedExtension);
        if (!in_array($extension, $aAllowedExtensions)) {
            $erreur = 'Vous devez uploader un fichier de type: '.$allowedExtension;
        }
        
        if ($taille > $tailleMaxi) {
            $erreur = 'Le fichier est trop gros...';
        }
        
        //Begin upload media
        if (!isset($erreur)) {
            //Rename fichier
            $fichier = md5(uniqid(mt_rand(), true));
            
            //Upload
            if (move_uploaded_file($tmp_file, $directory . $fichier . $extension)) {
                $complete_path = $directory . $fichier . $extension;
                chmod($complete_path, 0777);
                return array("complete_path"=>$complete_path,
                            "directory"=>$directory,
                            "fichier"=>$fichier . $extension,
                            "success"=>true
                    );
            } else {
                 return array("error"=>"echec du fonction move_uploaded_file",
                             "success"=>false
                    );
            }
        } else {
             return array("error"=>$erreur,
                          "success"=>false
                    );
        }
    }

}