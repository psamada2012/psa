<?php

namespace Psa\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Psa\AdminBundle\Entity\Gallery
 *
 * @ORM\Table(name="gallery")
 * @ORM\Entity(repositoryClass="Psa\AdminBundle\Entity\GalleryRepository")
 */
class Gallery
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
     * @var integer $album_id
     *
     * @ORM\Column(name="album_id", type="integer", nullable=true)
     */
    private $album_id;

    /**
     * @var string $src
     *
     * @ORM\Column(name="src", type="string", length=255)
     */
    private $src;


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
     * Set album_id
     *
     * @param integer $albumId
     */
    public function setAlbumId($albumId)
    {
        $this->album_id = $albumId;
    }

    /**
     * Get album_id
     *
     * @return integer 
     */
    public function getAlbumId()
    {
        return $this->album_id;
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
}