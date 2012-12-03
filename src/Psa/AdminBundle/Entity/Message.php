<?php

namespace Psa\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Psa\AdminBundle\Entity\Message
 *
 * @ORM\Table(name="messages")
 * @ORM\Entity(repositoryClass="Psa\AdminBundle\Entity\MessageRepository")
 */
class Message
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var datetime $dateMessage
     *
     * @ORM\Column(name="date_message", type="datetime")
     */
    private $dateMessage;

    /**
     * @var string $fromEmail
     *
     * @ORM\Column(name="from_email", type="string", length=255)
     */
    private $fromEmail;

    /**
     * @var string $toEmail
     *
     * @ORM\Column(name="to_email", type="string", length=255)
     */
    private $toEmail;

    /**
     * @var text $contenu
     *
     * @ORM\Column(name="contenu", type="text")
     */
    private $contenu;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set dateMessage
     *
     * @param datetime $dateMessage
     */
    public function setDateMessage($dateMessage)
    {
        $this->dateMessage = $dateMessage;
    }

    /**
     * Get dateMessage
     *
     * @return datetime 
     */
    public function getDateMessage()
    {
        return $this->dateMessage;
    }

    /**
     * Set fromEmail
     *
     * @param string $fromEmail
     */
    public function setFromEmail($fromEmail)
    {
        $this->fromEmail = $fromEmail;
    }

    /**
     * Get fromEmail
     *
     * @return string 
     */
    public function getFromEmail()
    {
        return $this->fromEmail;
    }

    /**
     * Set toEmail
     *
     * @param string $toEmail
     */
    public function setToEmail($toEmail)
    {
        $this->toEmail = $toEmail;
    }

    /**
     * Get toEmail
     *
     * @return string 
     */
    public function getToEmail()
    {
        return $this->toEmail;
    }

    /**
     * Set contenu
     *
     * @param text $contenu
     */
    public function setContenu($contenu)
    {
        $this->contenu = $contenu;
    }

    /**
     * Get contenu
     *
     * @return text 
     */
    public function getContenu()
    {
        return $this->contenu;
    }
}