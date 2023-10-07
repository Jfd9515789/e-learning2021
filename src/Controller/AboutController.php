<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AboutController extends AbstractController
{
    #[Route('/about', name: 'about')]
    public function about(UserRepository $userRepository): Response
    {
        $users = $userRepository->findAll(
            ['name' => 'ASC']
        );

        return $this->render('about/about.html.twig', [
            'users' => $users
        ]);
    }
}
