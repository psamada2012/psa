<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ArchiveController extends Controller
{
    
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $articles = $em->getRepository('PsaAdminBundle:Article')->findAll();
        $aParam['articles']=$articles;
        
        return $this->render('PsaPageBundle:Archive:index.html.twig',$aParam);
    }
}
