<?php

namespace App\DataFixtures;

use App\Entity\Course;
use App\Entity\CourseCategory;
use App\Entity\CourseLevel;
use App\Entity\Professeur;
use Cocur\Slugify\Slugify;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class CourseFixtures extends Fixture implements DependentFixtureInterface
{
    private $prices = [80, 120, 150, 200, 250, 300, 340.50, 400];
    private $durations = [60, 120, 180, 200, 300, 360, 500, 600];

    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create();
        $slugify = new Slugify();
        $categories = $manager->getRepository(CourseCategory::class)->findAll();
        $levels = $manager->getRepository(CourseLevel::class)->findAll();
        $professeur = $manager->getRepository(Professeur::class)->findAll();
        $nbPrices = count($this->prices);
        $nbDurations = count($this->durations);
        $nbCat = count($categories);
        $nblevels = count($levels);
        for ($i = 2; $i <= 26; $i++) {
            $course = new Course();
            $course->setCategory($categories[$faker->numberBetween(0, $nbCat - 1)]);
            $course->setLevel($levels[$faker->numberBetween(0, $nblevels - 1)]);
            $course->setProfesseur($professeur[$faker->numberBetween(0, $nblevels - 1)]);
            $course->setName($faker->sentence(2, true));
            $course->setSmallDescription('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.');
            $course->setFullDescription('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla. Fusce dapibus dui sit amet aliquam sollicitudin. Phasellus scelerisque eu augue a volutpat. In condimentum lorem laoreet ligula finibus, sit amet elementum elit ornare. Sed ipsum eros, facilisis et est sit amet, tristique tempor enim. Quisque ut laoreet neque. Quisque nunc mi, molestie sed pharetra a, faucibus id velit.');
            $course->setDuration($this->durations[$faker->numberBetween(0, $nbDurations - 1)]);
            $course->setPrice($this->prices[$faker->numberBetween(0, $nbPrices - 1)]);
            $course->setCreatedAt(new \DateTimeImmutable());
            $course->setIsPublished($faker->boolean(90));
            $course->setSlug($slugify->slugify($course->getName()));
            $course->setImage($i . '.jpg');
            $course->setSchedule($faker->dayOfWeek);
            $course->setProgram($i . '.pdf');
            $manager->persist($course);
        }
        $manager->flush();
    }

    /**
     * This method must return an array of fixtures classes
     * on which the implementing class depends on
     *
     * @psalm-return array<class-string<FixtureInterface>>
     */
    public function getDependencies(): array
    {
        return [
            CourseCategoryFixtures::class,
            CourseLevelFixtures::class
        ];
    }
}
