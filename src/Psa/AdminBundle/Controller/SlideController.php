<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Psa\AdminBundle\Entity\Slide;
use Psa\AdminBundle\Form\SlideType;

/**
 * Slide controller.
 *
 */
class SlideController extends Controller
{
    /**
     * Lists all Slide entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('PsaAdminBundle:Slide')->findBy(
			$criteres  	= array(),
			$order		= array("tri"=>"asc")
		);

        return $this->render('PsaAdminBundle:Slide:index.html.twig', array(
            'entities' => $entities
        ));
    }

    /**
     * Finds and displays a Slide entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Slide')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Slide entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Slide:show.html.twig', array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Displays a form to create a new Slide entity.
     *
     */
    public function newAction()
    {
        $entity = new Slide();
        $form   = $this->createForm(new SlideType(), $entity);

        return $this->render('PsaAdminBundle:Slide:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Creates a new Slide entity.
     *
     */
    public function createAction()
    {
        $entity  = new Slide();
        $request = $this->getRequest();
        $form    = $this->createForm(new SlideType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
			
			if (isset($_FILES["psa_adminbundle_slidetype"]['size']["src"]) && $_FILES["psa_adminbundle_slidetype"]['size']["src"]>0) { 
              
                $params['directory']        = $this->container->getParameter("directory_images");
                $params['tailleMaxi']       = $this->container->getParameter("taille_maxi_images");
                $params['allowedExtension'] = $this->container->getParameter("extension_images");
                $params['inputName']        = "psa_adminbundle_slidetype";
                $params['inputName2']       = "src";
                
                $helper = $this->get("admin.helper.core");
                $file_uploaded = $helper->uploadFile($params);
                
                 //Upload
                if ($file_uploaded["success"]== true) {
                    $path = "images/".$file_uploaded["fichier"];
                    $entity->setSrc($path);
                }  else {
                    $this->get('session')->setFlash('error', $file_uploaded["error"]);
                }
            }
			
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('slide'));
            
        }

        return $this->render('PsaAdminBundle:Slide:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Displays a form to edit an existing Slide entity.
     *
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Slide')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Slide entity.');
        }

        $editForm = $this->createForm(new SlideType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Slide:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Edits an existing Slide entity.
     *
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Slide')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Slide entity.');
        }

		$oldSrc    = $entity->getSrc();
        $editForm   = $this->createForm(new SlideType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
			
			if (isset($_FILES["psa_adminbundle_slidetype"]['size']["src"]) && $_FILES["psa_adminbundle_slidetype"]['size']["src"]>0) { 
              
                $params['directory']        = $this->container->getParameter("directory_images");
                $params['tailleMaxi']       = $this->container->getParameter("taille_maxi_images");
                $params['allowedExtension'] = $this->container->getParameter("extension_images");
                $params['inputName']        = "psa_adminbundle_slidetype";
                $params['inputName2']       = "src";
                
                $helper = $this->get("admin.helper.core");
                $file_uploaded = $helper->uploadFile($params);
                
                 //Upload
                if ($file_uploaded["success"]== true) {
                    $path = "images/".$file_uploaded["fichier"];
                    $entity->setSrc($path);
                }  else {
                    $entity->setSrc($oldSrc);
                    $this->get('session')->setFlash('error', $file_uploaded["error"]);
                }
            }
			
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('slide'));
        }

        return $this->render('PsaAdminBundle:Slide:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Slide entity.
     *
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('PsaAdminBundle:Slide')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Slide entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('slide'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
