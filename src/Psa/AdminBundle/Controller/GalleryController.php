<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Psa\AdminBundle\Entity\Gallery;
use Psa\AdminBundle\Form\GalleryType;

/**
 * Gallery controller.
 *
 */
class GalleryController extends Controller
{
    /**
     * Lists all Gallery entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('PsaAdminBundle:Gallery')->findAll();

        return $this->render('PsaAdminBundle:Gallery:index.html.twig', array(
            'entities' => $entities
        ));
    }

    /**
     * Finds and displays a Gallery entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Gallery')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Gallery entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Gallery:show.html.twig', array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Displays a form to create a new Gallery entity.
     *
     */
    public function newAction()
    {
        $entity = new Gallery();
        $form   = $this->createForm(new GalleryType(), $entity);

        return $this->render('PsaAdminBundle:Gallery:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Creates a new Gallery entity.
     *
     */
    public function createAction()
    {
        $entity  = new Gallery();
        $request = $this->getRequest();
        $album_id = $request->request->get("a_id");
        $form    = $this->createForm(new GalleryType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            
             if (isset($_FILES["psa_adminbundle_gallerytype"]['size']["src"]) && $_FILES["psa_adminbundle_gallerytype"]['size']["src"]>0) { 
              
                $params['directory']        = $this->container->getParameter("directory_gallery");
                $params['tailleMaxi']       = $this->container->getParameter("taille_maxi_gallery");
                $params['allowedExtension'] = $this->container->getParameter("extension_gallery");
                $params['inputName']        = "psa_adminbundle_gallerytype";
                $params['inputName2']       = "src";
                
                $helper = $this->get("admin.helper.core");
                $file_uploaded = $helper->uploadFile($params);
                
                 //Upload
                if ($file_uploaded["success"]== true) {
                    $src = $file_uploaded["fichier"];
                    $entity->setSrc('gallery/'.$src);
                }  else {
                    $this->get('session')->setFlash('error', $file_uploaded["error"]);
                }
            }
            $entity->setAlbumId($album_id);
            $em->persist($entity);
            $em->flush();

        }

        return $this->redirect($this->generateUrl('albums_edit',array('id'=>$album_id)));
    }

    /**
     * Displays a form to edit an existing Gallery entity.
     *
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Gallery')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Gallery entity.');
        }

        $editForm = $this->createForm(new GalleryType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Gallery:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Edits an existing Gallery entity.
     *
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Gallery')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Gallery entity.');
        }

        $editForm   = $this->createForm(new GalleryType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('gallery_edit', array('id' => $id)));
        }

        return $this->render('PsaAdminBundle:Gallery:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Gallery entity.
     *
     */
    public function deleteAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();
        $entity = $em->getRepository('PsaAdminBundle:Gallery')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Gallery entity.');
        }
        $album_id  =  $entity->getAlbumId();
        $em->remove($entity);
        $em->flush();

        return $this->redirect($this->generateUrl('albums_edit',array('id'=>$album_id)));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
