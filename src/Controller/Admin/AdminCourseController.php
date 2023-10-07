<?php

namespace App\Controller\Admin;

use App\Entity\Course;
use App\Form\CourseType;
use App\Repository\CourseRepository;
use Cocur\Slugify\Slugify;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class AdminCourseController extends AbstractController
{
    /**
     * @param CourseRepository $repository
     * @return Response
     */
    #[Route('/admin/courses', name: 'admin_courses')]
    public function adminCourses(CourseRepository $repository): Response
    {
        $courses = $repository->findBy(
            [],
            ['createdAt' => 'ASC']
        );
        return $this->render('admin/courses/courses.html.twig', [
            'courses' => $courses,
        ]);
    }

    /**
     * @param Course $course
     * @param EntityManagerInterface $manager
     * @return Response
     */
    #[Route('/admin/viewcourse/{id}', name: 'admin_view_course')]
    public function viewCourse(Course $course, EntityManagerInterface $manager): Response
    {
        $course->setIsPublished(!$course->getIsPublished());
        $manager->flush();
        return $this->redirectToRoute('admin_courses');
    }

    /**
     * @param Course $course
     * @param EntityManagerInterface $manager
     * @return Response
     */
    #[Route('/admin/delcourse/{id}', name: 'admin_del_course')]
    public function delCourse(Course $course, EntityManagerInterface $manager): Response
    {
        $manager->remove($course);
        $manager->flush();
        $this->addFlash(
            'success',
            'Le cours ' . $course->getName() . ' a bien été supprimé'
        );
        return $this->redirectToRoute('admin_courses');
    }

    /**
     * @param EntityManagerInterface $manager
     * @param Request $request
     * @param ValidatorInterface $validator
     * @return Response
     */
    #[Route('/admin/newcourse', name: 'admin_new_course')]
    public function newCourse(EntityManagerInterface $manager, Request $request, ValidatorInterface $validator): Response
    {
        $course = new Course();

        $errors = $validator->validate($course);

        if (count($errors) > 0) {

            $errorsString = (string)$errors;

            return new Response($errorsString);
        }

        $form = $this->createForm(CourseType::class, $course);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $slug = new Slugify();
            $course->setSlug($slug->slugify($course->getName()));
            $course->setCreatedAt(new \DateTimeImmutable());
            $course->setIsPublished(true);
            /*On persist uniquement en insert pas en edit*/
            $manager->persist($course);
            $manager->flush();
            $this->addFlash(
                'success',
                'La formation ' . $course->getName() . ' a bien été ajoutée.'
            );
            return $this->redirectToRoute('admin_courses');
        }

        return $this->renderForm('admin/courses/newcourse.html.twig', [
            'form' => $form
        ]);
    }

    /**
     * @param Course $course
     * @param EntityManagerInterface $manager
     * @param Request $request
     * @return Response
     */
    #[Route('/admin/editcourse/{id}', name: 'admin_edit_course')]
    public function editCourse(Course $course, EntityManagerInterface $manager, Request $request): Response
    {
        $form = $this->createForm(CourseType::class, $course);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $slug = new Slugify();
            $course->setSlug($slug->slugify($course->getName()));
            $course->setCreatedAt(new \DateTimeImmutable());
            $course->setIsPublished(true);
            $manager->persist($course);
            $manager->flush();
            $this->addFlash(
                'success',
                'La formation ' . $course->getName() . ' a bien été modifié.'
            );
            return $this->redirectToRoute('admin_courses');
        }

        return $this->renderForm('admin/courses/editcourse.html.twig', [
            'form' => $form
        ]);
    }
}