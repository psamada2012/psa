<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class PageMetaType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('cle',null,array("attr"=>array("style"=>"visibility:hidden")))
            ->add('value')
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_pagemetatype';
    }
}
