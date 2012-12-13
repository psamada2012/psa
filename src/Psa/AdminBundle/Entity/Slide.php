<?php

namespace Psa\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Psa\AdminBundle\Entity\Slide
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Psa\AdminBundle\Entity\SlideRepository")
 */
class Slide
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
     * @var string $src
     *
     * @ORM\Column(name="src", type="string", length=255, nullable=true)
     */
    private $src;

    /**
     * @var integer $tri
     *
     * @ORM\Column(name="tri", type="integer")
     */
    private $tri;


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
     * Set src
     *
     * @param string $src
     */
    public function setSrc($src)
    {
        $this->src = $src;
    }

    /**
     * Get src
     *
     * @return string 
     */
    public function getSrc()
    {
        return $this->src;
    }

    /**
     * Set tri
     *
     * @param integer $tri
     */
    public function setTri($tri)
    {
        $this->tri = $tri;
    }

    /**
     * Get tri
     *
     * @return integer 
     */
    public function getTri()
    {
        return $this->tri;
    }
}