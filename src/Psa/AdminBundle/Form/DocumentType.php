<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class DocumentType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('path')
            ->add('description')
            ->add('date_upload')
            ->add('user')
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_documenttype';
    }
}
