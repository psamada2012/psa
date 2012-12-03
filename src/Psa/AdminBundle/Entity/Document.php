<?php

namespace Psa\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Psa\AdminBundle\Entity\Documents
 *
 * @ORM\Table(name="documents")
 * @ORM\Entity(repositoryClass="Psa\AdminBundle\Entity\DocumentRepository")
 */
class Document
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
     * @var string $path
     *
     * @ORM\Column(name="path", type="string", length=255)
     */
    private $path;

    /**
     * @var text $description
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var date $date_upload
     *
     * @ORM\Column(name="date_upload", type="date")
     */
    private $date_upload;

    /**
    * @ORM\ManyToOne(targetEntity="Psa\UserBundle\Entity\User")
    */
    private $user;


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
     * Set path
     *
     * @param string $path
     */
    public function setPath($path)
    {
        $this->path = $path;
    }

    /**
     * Get path
     *
     * @return string 
     */
    public function getPath()
    {
        return $this->path;
    }

    /**
     * Set description
     *
     * @param text $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * Get description
     *
     * @return text 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set date_upload
     *
     * @param date $dateUpload
     */
    public function setDateUpload($dateUpload)
    {
        $this->date_upload = $dateUpload;
    }

    /**
     * Get date_upload
     *
     * @return date 
     */
    public function getDateUpload()
    {
        return $this->date_upload;
    }

    /**
     * Set user
     *
     * @param Psa\UserBundle\Entity\User $user
     */
    public function setUser(\Psa\UserBundle\Entity\User $user)
    {
        $this->user = $user;
    }

    /**
     * Get user
     *
     * @return Psa\UserBundle\Entity\User 
     */
    public function getUser()
    {
        return $this->user;
    }
}