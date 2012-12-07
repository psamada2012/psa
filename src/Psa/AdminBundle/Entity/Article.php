<?php

namespace Psa\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Psa\AdminBundle\Entity\Article
 *
 * @ORM\Table(name="articles")
 * @ORM\Entity(repositoryClass="Psa\AdminBundle\Entity\ArticleRepository")
 */
class Article
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
     * @var string $titre
     *
     * @ORM\Column(name="titre", type="string", length=255)
     */
    private $titre;

    /**
     * @var text $contenu
     *
     * @ORM\Column(name="contenu", type="text")
     */
    private $contenu;

    /**
     * @var string $image1
     *
     * @ORM\Column(name="image1", type="string", length=255, nullable=true)
     */
    private $image1;

    /**
     * @var string $image2
     *
     * @ORM\Column(name="image2", type="string", length=255, nullable=true)
     */
    private $image2;

    /**
     * @var datetime $datePublication
     *
     * @ORM\Column(name="date_publication", type="datetime")
     */
    private $datePublication;

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
     * Set titre
     *
     * @param string $titre
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;
    }

    /**
     * Get titre
     *
     * @return string 
     */
    public function getTitre()
    {
        return $this->titre;
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

    /**
     * Set image1
     *
     * @param string $image1
     */
    public function setImage1($image1)
    {
        $this->image1 = $image1;
    }

    /**
     * Get image1
     *
     * @return string 
     */
    public function getImage1()
    {
        return $this->image1;
    }

    /**
     * Set image2
     *
     * @param string $image2
     */
    public function setImage2($image2)
    {
        $this->image2 = $image2;
    }

    /**
     * Get image2
     *
     * @return string 
     */
    public function getImage2()
    {
        return $this->image2;
    }

    /**
     * Set datePublication
     *
     * @param datetime $datePublication
     */
    public function setDatePublication($datePublication)
    {
        $this->datePublication = $datePublication;
    }

    /**
     * Get datePublication
     *
     * @return datetime 
     */
    public function getDatePublication()
    {
        return $this->datePublication;
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