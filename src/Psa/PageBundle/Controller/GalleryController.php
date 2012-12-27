<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class GalleryController extends Controller
{
    
    public function indexAction($album_id)
    {
        $em = $this->getDoctrine()->getEntityManager();
        if($album_id == null){
            $entities = $em->getRepository('PsaAdminBundle:Gallery')->findAll();
            $album = null;
        }else{
            $entities = $em->getRepository('PsaAdminBundle:Gallery')->findBy(array('album_id'=>$album_id));
            $album = $em->getRepository('PsaAdminBundle:Albums')->find($album_id);
        }
        
        $aParam['galleries'] = $entities;
        $aParam['album'] = $album;
        
        return $this->render('PsaPageBundle:Gallery:index.html.twig',$aParam);
    }
}
