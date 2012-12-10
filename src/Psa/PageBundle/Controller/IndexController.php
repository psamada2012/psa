<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class IndexController extends Controller
{
    
    public function indexAction()
    {
		$em = $this->getDoctrine()->getEntityManager();
		$repPageMeta = $em->getRepository('PsaAdminBundle:PageMeta');

		//Texte Accueil
        $page_meta_accueil_texte = $repPageMeta->findOneBy(array("cle"=>"accueil-texte"));

        if (!$page_meta_accueil_texte) {
            throw $this->createNotFoundException('Unable to find PageMeta entity.');
        }
		
		$aParam["accueil_texte"]=$page_meta_accueil_texte->getValue();
				
        return $this->render('PsaPageBundle:Index:index.html.twig',$aParam);
    }
}
