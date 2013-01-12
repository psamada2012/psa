<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Psa\AdminBundle\Entity\Document;
use Psa\AdminBundle\Form\DocumentType;

/**
 * Document controller.
 *
 */
class DocumentController extends Controller
{
    /**
     * Lists all Document entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

         $documents = $em->getRepository('PsaAdminBundle:Document')->findBy(
                    $criteres	= array(),
                    $order		= array("date_upload"=>"desc")
            );

        return $this->render('PsaAdminBundle:Document:index.html.twig', array(
            'entities' => $documents
        ));
    }

    /**
     * Finds and displays a Document entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Document')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Document entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Document:show.html.twig', array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Displays a form to create a new Document entity.
     *
     */
    public function newAction()
    {
        $entity = new Document();
        $form   = $this->createForm(new DocumentType(), $entity);

        return $this->render('PsaAdminBundle:Document:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Creates a new Document entity.
     *
     */
    public function createAction()
    {
        $entity  = new Document();
        $request = $this->getRequest();
        $form    = $this->createForm(new DocumentType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            
            if (isset($_FILES["psa_adminbundle_documenttype"]['size']["path"]) && $_FILES["psa_adminbundle_documenttype"]['size']["path"]>0) { 
              
                $params['directory']        = $this->container->getParameter("directory_documents");
                $params['tailleMaxi']       = $this->container->getParameter("taille_maxi_documents");
                $params['allowedExtension'] = $this->container->getParameter("extension_documents");
                $params['inputName']        = "psa_adminbundle_documenttype";
                $params['inputName2']       = "path";
                
                $helper = $this->get("admin.helper.core");
                $file_uploaded = $helper->uploadFile($params);
                
                 //Upload
                if ($file_uploaded["success"]== true) {
                    $path = $file_uploaded["fichier"];
                    $entity->setPath($path);
                    $entity->setDateUpload(new \Datetime());
                }  else {
                    $this->get('session')->setFlash('error', $file_uploaded["error"]);
                }
            }
            
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('document'));
            
        }

        return $this->render('PsaAdminBundle:Document:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Displays a form to edit an existing Document entity.
     *
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Document')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Document entity.');
        }

        $editForm = $this->createForm(new DocumentType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Document:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Edits an existing Document entity.
     *
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Document')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Document entity.');
        }

        $oldPath    = $entity->getPath();
        
        $editForm   = $this->createForm(new DocumentType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            
             if (isset($_FILES["psa_adminbundle_documenttype"]['size']["path"]) && $_FILES["psa_adminbundle_documenttype"]['size']["path"]>0) { 
              
                $params['directory']        = $this->container->getParameter("directory_documents");
                $params['tailleMaxi']       = $this->container->getParameter("taille_maxi_documents");
                $params['allowedExtension'] = $this->container->getParameter("extension_documents");
                $params['inputName']        = "psa_adminbundle_documenttype";
                $params['inputName2']       = "path";
                
                $helper = $this->get("admin.helper.core");
                $file_uploaded = $helper->uploadFile($params);
                
                 //Upload
                if ($file_uploaded["success"]== true) {
                    $path = $file_uploaded["fichier"];
                    $entity->setpath($path);
                }  else {
                    $entity->setpath($oldPath);
                    $this->get('session')->setFlash('error', $file_uploaded["error"]);
                }
            }else{
                $entity->setpath($oldPath);
            }
            
            $em->persist($entity);
            $em->flush();
            
            $this->get('session')->setFlash('info', "Mise à jour effectué");
            
            return $this->redirect($this->generateUrl('document'));
        }

        return $this->render('PsaAdminBundle:Document:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Document entity.
     *
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('PsaAdminBundle:Document')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Document entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('document'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
