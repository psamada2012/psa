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
	
	/**
	* Left Menu: Derniers Articles
	*/
	public function widgetDerniersArticlesAction()
	{
		$em = $this->getDoctrine()->getEntityManager();

        $articles = $em->getRepository('PsaAdminBundle:Article')->findBy(
			$criteres	= array(),
			$order		= array("datePublication"=>"desc"),
			$limit		= 5
		);

        if (!$articles) {
            throw $this->createNotFoundException('Unable to find Article entity.');
        }
        
        $aParam['articles']=$articles;

        return $this->render('PsaPageBundle:Article:widget_derniers_articles.html.twig', $aParam
        );
	}
}
