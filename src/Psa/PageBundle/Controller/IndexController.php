<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class IndexController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Index:index.html.twig');
    }
}
