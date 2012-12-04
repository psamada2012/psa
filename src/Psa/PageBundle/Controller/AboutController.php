<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class AboutController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:About:index.html.twig');
    }
}
