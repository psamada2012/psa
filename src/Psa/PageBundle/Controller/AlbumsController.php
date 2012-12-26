<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class AlbumsController extends Controller
{
    
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();
        $albums = $em->getRepository('PsaAdminBundle:Albums')->findAll();
        $aParam['albums'] = $albums;
        
        return $this->render('PsaPageBundle:Albums:index.html.twig',$aParam);
    }
}
