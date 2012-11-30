<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class IndexController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaAdminBundle:Index:index.html.twig');
    }
}
