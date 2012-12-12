<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ArchiveController extends Controller
{
    
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();
		$qsearch = $this->getRequest()->query->get("q",null);
        $articles = $em->getRepository('PsaAdminBundle:Article')->search($em,$qsearch);
        
        $aParam['articles']=$articles;
        
        return $this->render('PsaPageBundle:Archive:index.html.twig',$aParam);
    }
}
