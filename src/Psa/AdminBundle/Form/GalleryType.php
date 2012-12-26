<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class GalleryType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('album_id','hidden')
            ->add('src','file')
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_gallerytype';
    }
}
