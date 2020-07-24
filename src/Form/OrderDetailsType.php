<?php

namespace App\Form;

use App\Entity\OrderDetails;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class OrderDetailsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('orderid')
            ->add('userid')
            ->add('productid')
            ->add('price')
            ->add('quantity')
            ->add('amount')
            ->add('name')
        >add('status',ChoiceType::class,[
            'choices'=>[
                'New'=>'New',
                'Canceled'=>'Canceled',
                'Shipping'=>'Shipping',],
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => OrderDetails::class,
        ]);
    }
}
