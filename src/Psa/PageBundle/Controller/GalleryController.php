<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class GalleryController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Gallery:index.html.twig');
    }
}
