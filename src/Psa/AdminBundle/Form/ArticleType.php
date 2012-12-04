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
            ->add('contenu')
            ->add('image1')
            ->add('image2')
            ->add('datePublication')
            ->add('user')
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_articletype';
    }
}
