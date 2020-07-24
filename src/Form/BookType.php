<?php

namespace App\Form;

use App\Entity\Book;
use App\Entity\Category;
use FOS\CKEditorBundle\Form\Type\CKEditorType as CKEditorTypeAlias;
use phpDocumentor\Reflection\Type;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Choice;
use function Sodium\add;

class BookType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('category',EntityType::class,[
                'class' => Category::class,
                'choice_label'=>'title',
            ])



            ->add('title')
            ->add('keywords')
            ->add('description')
            ->add('image',FileType::class, [
                'label' => 'Image Upload',

                // unmapped means that this field is not associated to any entity property
                'mapped' => false,

                // make it optional so you don't have to re-upload the PDF file
                // everytime you edit the Product details
                'required' => false,

                // unmapped fields can't define their validation using annotations
                // in the associated entity, so you can use the PHP constraint classes
                'constraints' => [
                    new File([
                        'maxSize' => '2048k',
                        'mimeTypes' => [
                            'image/*',
                        ],
                        'mimeTypesMessage' => 'Please upload a valid Image document',
                    ])
                ],
            ])
            ->add('type')
            ->add('Yazar')
            ->add('Yayinci')
            ->add('detail', CKEditorTypeAlias::class,array(
                'config'=>array(
                    'uiColor' =>'#ffffff',
                ),
            ))
            ->add('Year')
            ->add('fiyat')
            ->add('sFiyat')
            ->add('status',ChoiceType::class,[
                'choices'=>[
                    'True'=>'True',
                    'False'=>'False'],
                ])

        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Book::class,
        ]);
    }
}
