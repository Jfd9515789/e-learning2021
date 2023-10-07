<?php

namespace App\Controller;

use App\Entity\Contact;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;

class MailerController extends AbstractController
{
    private $mailer;

    public function __construct(MailerInterface $mailer)
    {
        $this->mailer = $mailer;
    }

    #[Route('/mailer', name: 'mailer')]
    public function sendMail(Contact $contact): Response
    {
        $email = (new TemplatedEmail())
            ->from($contact->getEmail())
            ->to('info@weblearning.be')
            ->replyTo($contact->getEmail())
            ->subject($contact->getSubject())
            //->text('Sending emails is fun again!')
            ->htmlTemplate('contact/email-external-css.html.twig')
            ->context([
                'contact' => $contact
            ]);
        $this->mailer->send($email);
        return $this->redirectToRoute('home');
    }
}
