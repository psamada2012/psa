<?php

namespace Psa\PageBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Psa\AdminBundle\Entity\Message;


class ContactController extends Controller
{
    
    public function indexAction()
    {
        return $this->render('PsaPageBundle:Contact:index.html.twig');
    }
	
	public function sendAction()
	{
		$data = $this->getRequest()->request->All();
		$message  = new Message();
		$message->setDateMessage(new \Datetime());
		$message->setFromEmail($data['email']);
		$message->setToEmail("psamada@gmail.com");
		$message->setContenu($data['comment']);
		$em = $this->getDoctrine()->getEntityManager();
		$em->persist($message);
		$em->flush();
		
		$templating = $this->get('templating');
		$contenu = $templating->render('PsaPageBundle:Contact:email.html.twig',$data);
		
		$mailer = $this->get('mailer');
		$mail = \Swift_Message::newInstance()
			->setSubject('PSA Contact')
			->setFrom($data['email'])
			->setTo('psamada@gmail.com')
			->setBody($contenu);
		$mailer->send($mail);
		
		$this->get('session')->setFlash('info', "Votre Message a été bien envoyé");
		
		return $this->redirect($this->generateUrl('PsaPageBundle_homepage'));
	}
}
