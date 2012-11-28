<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ArticleController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Article:index.html.twig');
    }
}
