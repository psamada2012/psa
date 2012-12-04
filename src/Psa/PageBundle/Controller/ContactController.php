<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ContactController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Contact:index.html.twig');
    }
}
