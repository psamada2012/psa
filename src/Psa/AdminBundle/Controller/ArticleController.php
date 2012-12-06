<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Psa\AdminBundle\Entity\Article;
use Psa\AdminBundle\Form\ArticleType;

/**
 * Article controller.
 *
 */
class ArticleController extends Controller
{
    /**
     * Lists all Article entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('PsaAdminBundle:Article')->findAll();

        return $this->render('PsaAdminBundle:Article:index.html.twig', array(
            'entities' => $entities
        ));
    }

    /**
     * Finds and displays a Article entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Article')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Article:show.html.twig', array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Displays a form to create a new Article entity.
     *
     */
    public function newAction()
    {
        $entity = new Article();
        $form   = $this->createForm(new ArticleType(), $entity);

        return $this->render('PsaAdminBundle:Article:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Creates a new Article entity.
     *
     */
    public function createAction()
    {
        $entity  = new Article();
        $request = $this->getRequest();
        $form    = $this->createForm(new ArticleType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('article_show', array('id' => $entity->getId())));
            
        }

        return $this->render('PsaAdminBundle:Article:new.html.twig', array(
            'entity' => $entity,
            'form'   => $form->createView()
        ));
    }

    /**
     * Displays a form to edit an existing Article entity.
     *
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Article')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        $editForm = $this->createForm(new ArticleType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return $this->render('PsaAdminBundle:Article:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Edits an existing Article entity.
     *
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('PsaAdminBundle:Article')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        $editForm   = $this->createForm(new ArticleType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            
            $directory        = $this->container->getParameter("directory_images");
            $params['tailleMaxi']       = $this->container->getParameter("taille_maxi_images");
            $params['allowedExtension'] = $this->container->getParameter("extension_images");
                
            if (isset($_FILES["psa_adminbundle_articletype"]['size']["image1"]) && $_FILES["psa_adminbundle_articletype"]['size']["image1"]>0) { 
                //File Infos
                $taille = filesize($_FILES["psa_adminbundle_articletype"]['tmp_name']["image1"]);
                $extension = strrchr($_FILES["psa_adminbundle_articletype"]['name']["image1"], '.');
                $fichier = md5(uniqid(mt_rand(), true));
                 //Upload
                if (move_uploaded_file($_FILES["psa_adminbundle_articletype"]['tmp_name']["image1"], $directory . $fichier . $extension)) {
                    $complete_path = $directory . $fichier . $extension;
                    chmod($complete_path, 0777);
               
                    $image1 = "images/". $fichier . $extension;
                    $entity->setImage1($image1);
                }
            }
            
           if (isset($_FILES["psa_adminbundle_articletype"]['size']["image2"]) && $_FILES["psa_adminbundle_articletype"]['size']["image2"]>0) { 
                //File Infos
                $taille = filesize($_FILES["psa_adminbundle_articletype"]['tmp_name']["image2"]);
                $extension = strrchr($_FILES["psa_adminbundle_articletype"]['name']["image2"], '.');
                $fichier = md5(uniqid(mt_rand(), true));
                 //Upload
                if (move_uploaded_file($_FILES["psa_adminbundle_articletype"]['tmp_name']["image2"], $directory . $fichier . $extension)) {
                    $complete_path = $directory . $fichier . $extension;
                    chmod($complete_path, 0777);
               
                    $image2 = "images/". $fichier . $extension;
                    $entity->setimage2($image2);
                }
            }
            
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('article_edit', array('id' => $id)));
        }

        return $this->render('PsaAdminBundle:Article:edit.html.twig', array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Article entity.
     *
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('PsaAdminBundle:Article')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Article entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('article'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
