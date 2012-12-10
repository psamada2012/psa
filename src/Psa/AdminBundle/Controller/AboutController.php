<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Psa\AdminBundle\Entity\PageMeta;
use Psa\AdminBundle\Form\PageMetaType;

class AboutController extends Controller
{
    
    public function indexAction()
    {
		$em = $this->getDoctrine()->getEntityManager();
		$repPageMeta = $em->getRepository('PsaAdminBundle:PageMeta');
                
		//About
                $page_meta_about = $repPageMeta->findOneBy(array("cle"=>"about"));

                if (!$page_meta_about) {
                throw $this->createNotFoundException('Unable to find PageMeta entity.');
                }

		$editFormAbout = $this->createForm(new PageMetaType(), $page_meta_about);

                return $this->render('PsaAdminBundle:About:index.html.twig', array(
                    'page_meta_about'      => $page_meta_about,
                    'edit_form_about'   => $editFormAbout->createView(),
                ));
    }
	
	
}
