<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class DocumentType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('path',"file")
            ->add('description')
            ->add('date_upload',null,array("attr"=>array("style"=>"visibility:hidden")))
            ->add('user',null,array("attr"=>array("style"=>"visibility:hidden")))
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_documenttype';
    }
}
