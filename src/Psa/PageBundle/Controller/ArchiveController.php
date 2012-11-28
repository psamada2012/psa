<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ArchiveController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Archive:index.html.twig');
    }
}
