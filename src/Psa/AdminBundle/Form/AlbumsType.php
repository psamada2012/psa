<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class AlbumsType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('titre')
            ->add('date_creation',null,array("attr"=>array("style"=>"display:none")))
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_albumstype';
    }
}
