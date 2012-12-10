<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class AboutController extends Controller
{
    
    public function indexAction()
    {
		$em = $this->getDoctrine()->getEntityManager();
		$repPageMeta = $em->getRepository('PsaAdminBundle:PageMeta');

		//Texte Accueil
        $about = $repPageMeta->findOneBy(array("cle"=>"about"));

        if (!$about) {
            throw $this->createNotFoundException('Unable to find PageMeta entity.');
        }
		
		$aParam["about"]=$about->getValue();
		
        return $this->render('PsaPageBundle:About:index.html.twig',$aParam);
    }
}
