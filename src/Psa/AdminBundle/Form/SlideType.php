<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class SlideType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('src','file',array("required"=>false))
            ->add('tri')
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_slidetype';
    }
}
