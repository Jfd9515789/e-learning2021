<?php

namespace App\DataFixtures;

use Cocur\Slugify\Slugify;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;
use App\Entity\News;
use Faker\Factory;
use App\Entity\User;

class NewsFixtures extends Fixture implements DependentFixtureInterface
{

    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create();
        $slug = new Slugify();
        $users = $manager->getRepository(User::class)->findAll();

        for($i = 1; $i <= 50; $i++){
            $news = new News();
            $news->setName($faker->words(3, true));
            $news->setCreatedAt(new \DateTimeImmutable());
            $news->setUpdatedAt(new \DateTimeImmutable());
            $news->setContent('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacus sed fringilla.');
            $news->setIsPublished($faker->boolean(90));
            $news->setImage('0'.$i.'.png');
            $news->setSlug($slug->slugify($news->getName()));
            $news->setAuthor($users[$faker->numberBetween(0, count($users) -1)]);
            $manager->persist($news);
        }
        $manager->flush();
    }

    public function getDependencies()
    {
        return [
            UserFixtures::class,
        ];
    }
}
