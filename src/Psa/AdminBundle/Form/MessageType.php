<?php

namespace Psa\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class MessageType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('dateMessage')
            ->add('fromEmail')
            ->add('toEmail')
            ->add('contenu')
        ;
    }

    public function getName()
    {
        return 'psa_adminbundle_messagetype';
    }
}
