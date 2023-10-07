<?php

namespace App\Controller;

use App\Entity\News;
use App\Repository\CourseRepository;
use App\Repository\NewsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(NewsRepository $repository, CourseRepository $courseRepository): Response
    {
        $news = $repository->findBy(
            ['isPublished' => true],
            ['name' => 'ASC'],
        );

        $courses = $courseRepository->findBy(
            ['isPublished' => true],
            ['name' => 'ASC']
        );

        return $this->render('home/index.html.twig', [
            'news' => $news,
            'courses' => $courses
        ]);
    }
}
