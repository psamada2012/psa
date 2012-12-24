<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ErrorController extends Controller
{
    
    public function Error403Action()
    {	
        return $this->render('PsaPageBundle:Error:error403.html.twig');
    }
    
    public function Error404Action()
    {	
        return $this->render('PsaPageBundle:Error:error404.html.twig');
    }
}
