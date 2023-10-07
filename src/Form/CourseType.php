<?php

namespace App\Form;

use App\Entity\Course;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\NotBlank;
use Vich\UploaderBundle\Form\Type\VichFileType;
use Vich\UploaderBundle\Form\Type\VichImageType;

class CourseType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'label' => 'Nom du cours',
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('smallDescription', TextType::class, [
                'label' => 'Description courte',
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('fullDescription', TextType::class, [
                'label' => 'Description complète',
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('duration', IntegerType::class, [
                'label' => 'Durée de la formation',
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('price', MoneyType::class, [
                'label' => 'Prix de la formation',
            ])
            ->add('imageFile', VichImageType::class, [
                'label' => 'image du cours',
                'required' => false,
                'allow_delete' => false,
                'download_uri' => false,
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('schedule', TextType::class, [
                'label' => 'Horaire de la formation',
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('programFile', VichFileType::class, [
                'label' => 'Programme de la formation',
                'required' => false,
                'allow_delete' => false,
                'download_uri' => false,
            ])
            ->add('category', EntityType::class, [
                'label' => 'Catégorie de la formation',
                'placeholder' => 'Sélectionnez...',
                'class' => 'App:CourseCategory',
                'choice_label' => 'name',
                'query_builder' => function (EntityRepository $repository) {
                    return $repository->createQueryBuilder('c')->orderBy('c.name', 'ASC');
                },
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('professeur', EntityType::class, [
                'label' => 'Professeur de la formation',
                'placeholder' => 'Sélectionnez...',
                'class' => 'App:Professeur',
                'choice_label' => 'firstName',
                'query_builder' => function (EntityRepository $repository) {
                    return $repository->createQueryBuilder('p')->orderBy('p.firstName', 'ASC');
                },
                'constraints' => array(
                    new NotBlank(),
                ),
            ])
            ->add('level', EntityType::class, [
                'label' => 'Niveau de la formation',
                'class' => 'App:CourseLevel',
                'choice_label' => 'name',
                'constraints' => array(
                    new NotBlank(),
                ),
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Course::class,
        ]);
    }
}