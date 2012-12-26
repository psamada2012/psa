<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Psa\AdminBundle\Entity\Albums;
use Psa\AdminBundle\Form\AlbumsType;

/**
 * Albums controller.
 *
 */
class AlbumsController extends Controller
{
    /**
     * Lists all Albums entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('PsaAdminBundle:Albums')->findAll();

        return $this->render('PsaAdminBundle:Albums:index.html.twig', array(
            'entities' => $entities
        ));
    }

    /**
     * Finds and displays a Albums entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Albums')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Albums entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Albums:show.html.twig', array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Displays a form to create a new Albums entity.
     *
     */
    public function newAction()
    {
        $entity = new Albums();
        $form   = $this->createForm(new AlbumsType(), $entity);

        return $this->render('PsaAdminBundle:Albums:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Creates a new Albums entity.
     *
     */
    public function createAction()
    {
        $entity  = new Albums();
        $request = $this->getRequest();
        $form    = $this->createForm(new AlbumsType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity->setDateCreation(new \Datetime());
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('albums_edit', array('id' => $entity->getId())));
            
        }

        return $this->render('PsaAdminBundle:Albums:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Displays a form to edit an existing Albums entity.
     *
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Albums')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Albums entity.');
        }

        $galleries  =  $em->getRepository('PsaAdminBundle:Gallery')->findBy(array("album_id"=>$id));
        $editForm = $this->createForm(new AlbumsType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Albums:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
            'galleries'  => $galleries
        ));
    }

    /**
     * Edits an existing Albums entity.
     *
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Albums')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Albums entity.');
        }

        $editForm   = $this->createForm(new AlbumsType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('albums_edit', array('id' => $id)));
        }

        return $this->render('PsaAdminBundle:Albums:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Albums entity.
     *
     */
    public function deleteAction($id)
   {
        $em = $this->getDoctrine()->getEntityManager();
        
        //Delete albums
        $entity = $em->getRepository('PsaAdminBundle:Albums')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Albums entity.');
        }

        $album_id  =  $entity->getId();
        
        $em->remove($entity);
        
        //Delete galleries
        $galleries  =  $em->getRepository('PsaAdminBundle:Gallery')->findBy(array('album_id'=>$album_id));
        foreach($galleries as $gallery){
            $em->remove($gallery);
        }
        
        //commit
        $em->flush();
        

        return $this->redirect($this->generateUrl('albums'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
