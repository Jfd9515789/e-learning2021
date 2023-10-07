<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TeamController extends AbstractController
{
    #[Route('/team', name: 'team')]
    public function team(UserRepository $userRepository): Response
    {
        $users = $userRepository->findAll(
            ['name' => 'ASC']
        );

        return $this->render('team/team.html.twig', [
            'users' => $users
        ]);
    }
}