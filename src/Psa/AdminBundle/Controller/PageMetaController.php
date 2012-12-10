<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Psa\AdminBundle\Entity\PageMeta;
use Psa\AdminBundle\Form\PageMetaType;

/**
 * PageMeta controller.
 *
 */
class PageMetaController extends Controller
{
    /**
     * Lists all PageMeta entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('PsaAdminBundle:PageMeta')->findAll();

        return $this->render('PsaAdminBundle:PageMeta:index.html.twig', array(
            'entities' => $entities
        ));
    }

    /**
     * Finds and displays a PageMeta entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:PageMeta')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PageMeta entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:PageMeta:show.html.twig', array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Displays a form to create a new PageMeta entity.
     *
     */
    public function newAction()
    {
        $entity = new PageMeta();
        $form   = $this->createForm(new PageMetaType(), $entity);

        return $this->render('PsaAdminBundle:PageMeta:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Creates a new PageMeta entity.
     *
     */
    public function createAction()
    {
        $entity  = new PageMeta();
        $request = $this->getRequest();
        $form    = $this->createForm(new PageMetaType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('pagemeta_show', array('id' => $entity->getId())));
            
        }

        return $this->render('PsaAdminBundle:PageMeta:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Displays a form to edit an existing PageMeta entity.
     *
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:PageMeta')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PageMeta entity.');
        }

        $editForm = $this->createForm(new PageMetaType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:PageMeta:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Edits an existing PageMeta entity.
     *
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:PageMeta')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find PageMeta entity.');
        }

        $editForm   = $this->createForm(new PageMetaType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            //return $this->redirect($this->generateUrl('pagemeta_edit', array('id' => $id)));
        }

		return $this->redirect($this->generateUrl('PsaAdminBundle_homepage'));
		/*
        return $this->render('PsaAdminBundle:PageMeta:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
		*/
    }

    /**
     * Deletes a PageMeta entity.
     *
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('PsaAdminBundle:PageMeta')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find PageMeta entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('pagemeta'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
