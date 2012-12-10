<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Psa\AdminBundle\Entity\PageMeta;
use Psa\AdminBundle\Form\PageMetaType;

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

	$editFormAccueilTexte = $this->createForm(new PageMetaType(), $page_meta_accueil_texte);
        
        return $this->render('PsaAdminBundle:Index:index.html.twig', array(
			'page_meta_accueil_texte'      => $page_meta_accueil_texte,
			'edit_form_accueil_texte'   => $editFormAccueilTexte->createView(),
        ));
    }
	
	
}
