<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class DocumentController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Document:index.html.twig');
    }
}
