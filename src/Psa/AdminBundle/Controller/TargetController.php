<?php

namespace Psa\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
//use Symfony\Component\Security\Core\Exception\AccessDeniedException;

class TargetController extends Controller
{
    
    public function indexAction()
    {
	if ($this->container->get('security.context')->isGranted('ROLE_MODERATOR')) {
            return $this->redirect( $this->generateUrl('ccdn_forum_forum_index') );
        }
        else if ($this->container->get('security.context')->isGranted('ROLE_SUPER_ADMIN')){
            return $this->redirect( $this->generateUrl('PsaAdminBundle_homepage') );
        }
        else if ($this->container->get('security.context')->isGranted('ROLE_ADMIN')){
            return $this->redirect( $this->generateUrl('PsaAdminBundle_homepage') );
        }
        else{
            //throw new AccessDeniedException('You do not have permission to access this page!');
            return $this->redirect( $this->generateUrl('PsaPageBundle_homepage') );
        }
     }
}
