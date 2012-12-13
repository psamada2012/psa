<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('titre')
            ->add('contenu',null,array("attr"=>array("class"=>"tinymce")))
            ->add('image1',"file",array("required"=>false))
            ->add('datePublication',null,array("attr"=>array("style"=>"visibility:hidden")))
            ->add('user',null,array("attr"=>array("style"=>"visibility:hidden")))
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_articletype';
    }
}
