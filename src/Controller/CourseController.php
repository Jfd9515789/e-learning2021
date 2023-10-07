<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Course;
use App\Form\CommentType;
use App\Repository\CourseCategoryRepository;
use App\Repository\CourseRepository;
use App\Repository\ProfesseurRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CourseController extends AbstractController
{
    /**
     * @param CourseCategoryRepository $categoryRepository
     * @param CourseRepository $courseRepository
     * @return Response
     */
    #[Route('/courses', name: 'courses')]
    public function courses(CourseCategoryRepository $categoryRepository, CourseRepository $courseRepository): Response
    {
        $categories = $categoryRepository->findBy(
            [],
            ['name' => 'ASC']
        );
        $courses = $courseRepository->findBy(
            ['isPublished' => true],
            ['name' => 'ASC']
        );
        return $this->render('course/courses.html.twig', [
            'categories' => $categories,
            'courses' => $courses
        ]);
    }

    /**
     * @param Course $course
     * @return Response
     */
    #[Route('/course/{slug}', name: 'course')]
    public function course(Course $course, Request $request, EntityManagerInterface $manager, ProfesseurRepository $repository): Response
    {
        $professeur = $repository->findAll();

        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $comment->setAuthor($this->getUser());
            $comment->setCourse($course);
            $comment->setIsPublished(true);
            $comment->setCreatedAt(new \DateTimeImmutable());
            $manager->persist($comment);
            $manager->flush();
            // Création du message flash
            $this->addFlash(
                'success',
                'Votre commentaire a bien été posté!'
            );
        }

        return $this->renderForm('course/course.html.twig', [
            'course' => $course,
            'form' => $form,
            'professeur' => $professeur,
        ]);
    }
}
