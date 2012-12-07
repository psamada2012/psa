<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ArticleController extends Controller
{
    
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $articles = $em->getRepository('PsaAdminBundle:Article')->findAll();
        $aParam['articles']=$articles;
        
        return $this->render('PsaPageBundle:Article:index.html.twig',$aParam);
    }
    
    
    /**
     * Finds and displays a Article entity.
     *
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $article = $em->getRepository('PsaAdminBundle:Article')->find($id);

        if (!$article) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }
        
        $aParam['article']=$article;

        return $this->render('PsaPageBundle:Article:show.html.twig', $aParam
        );
    }
}
