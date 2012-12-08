<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class DocumentController extends Controller
{
    
    public function indexAction()
    {
        if(isset($_GET['url_file'])){
            
                $directory        = $this->container->getParameter("directory_documents");
                $filename = $directory.$_GET['url_file'];

                if ( file_exists( $filename ) ){
                        if(ini_get('zlib.output_compression')){
                                ini_set('zlib.output_compression', 'Off');
                        }
                        $file_extension = strtolower(substr(strrchr($filename,"."),1));
                        switch( $file_extension ){
                        case "pdf": $ctype="application/pdf"; break;
                        case "exe": $ctype="application/octet-stream"; break;
                        case "zip": $ctype="application/zip"; break;
                        case "doc": $ctype="application/msword"; break;
                        case "xls": $ctype="application/vnd.ms-excel"; break;
                        case "ppt": $ctype="application/vnd.ms-powerpoint"; break;
                        case "gif": $ctype="image/gif"; break;
                        case "png": $ctype="image/png"; break;
                        case "jpeg":
                        case "jpg": $ctype="image/jpg"; break;
                        default: $ctype="application/force-download";
                        }
                        header("Pragma: public"); // required
                        header("Expires: 0");
                        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
                        header("Cache-Control: private",false); // required for certain browsers 
                        header("Content-Type: $ctype");
                        header("Content-Type: application/force-download"); 
                        header("Content-Disposition: attachment; filename=\"".basename($filename)."\";" );
                        header("Content-Transfer-Encoding: binary");
                        header("Content-Length: ".filesize($filename));
                        readfile("$filename");
                        exit();

                }else{
                    echo("$filename")       ;die;
            }
        }
        
        $em = $this->getDoctrine()->getEntityManager();

        $documents = $em->getRepository('PsaAdminBundle:Document')->findAll();

        return $this->render('PsaPageBundle:Document:index.html.twig', array(
            'documents' => $documents
        ));
        
    }
}
