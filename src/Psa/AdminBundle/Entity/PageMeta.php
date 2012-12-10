<?php

namespace Psa\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Psa\AdminBundle\Entity\PageMeta
 *
 * @ORM\Table(name="page_meta")
 * @ORM\Entity(repositoryClass="Psa\AdminBundle\Entity\PageMetaRepository")
 */
class PageMeta
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
     * @var string $cle
     *
     * @ORM\Column(name="cle", type="string", length=255)
     */
    private $cle;

    /**
     * @var string $value
     *
     * @ORM\Column(name="value", type="text")
     */
    private $value;


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
     * Set cle
     *
     * @param string $cle
     */
    public function setCle($cle)
    {
        $this->cle = $cle;
    }

    /**
     * Get cle
     *
     * @return string 
     */
    public function getCle()
    {
        return $this->cle;
    }

    /**
     * Set value
     *
     * @param string $value
     */
    public function setValue($value)
    {
        $this->value = $value;
    }

    /**
     * Get value
     *
     * @return string 
     */
    public function getValue()
    {
        return $this->value;
    }
}