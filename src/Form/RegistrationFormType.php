<?php

namespace App\Form;

use App\Entity\User;
use Gregwar\CaptchaBundle\Type\CaptchaType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Vich\UploaderBundle\Form\Type\VichImageType;

class RegistrationFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('firstName', TextType::class, [
                'label' => 'Votre prénom',
                'attr' => [
                    "placeholder" => 'Votre prénom'
                ]
            ])
            ->add('lastName', TextType::class, [
                'label' => 'Votre nom de famille',
                'attr' => [
                    "placeholder" => 'Votre nom de famille'
                ]
            ])
            ->add('email', EmailType::class, [
                'label' => 'Votre E-mail',
                'attr' => [
                    "placeholder" => 'Votre E-Mail'
                ]
            ])
            ->add('imageFile', VichImageType::class, [
                'label' => 'Votre avatar',
                'required' => false,
                'attr' => [
                    "placeholder" => 'Votre image'
                ]
            ])
            ->add('plainPassword', PasswordType::class, [
                // instead of being set onto the object directly,
                // this is read and encoded in the controller
                'label' => 'Mot de passe',
                'mapped' => false,
                'attr' => ['autocomplete' => 'new-password'],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Entrer un mot de passe',
                    ]),
                    new Length([
                        'min' => 6,
                        'minMessage' => 'Votre mot de passe doit contenir au minimum {{ limit }}',
                        // max length allowed by Symfony for security reasons
                        'max' => 64,
                    ]),
                ],
            ])
            ->add('captcha', CaptchaType::class, [
                'label' => 'Retaper le texte encadrer',
            ])
            ->add('agreeTerms', CheckboxType::class, [
                'label' => 'Accepter conditions générales',
                'mapped' => false,
                'constraints' => [
                    new IsTrue([
                        'message' => 'Vous devez accepter les conditions',
                    ]),
                ],
            ])
            ->add('Submit', SubmitType::class, [
                'label' => 'S\'enregistrer',
                'validation_groups' => ['Registration'],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
