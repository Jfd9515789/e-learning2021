<?php

namespace App\DataFixtures;

use App\Entity\CourseLevel;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class CourseLevelFixtures extends Fixture
{
    private $levels = [
        'Débutant'      => 'Certificat de base',
        'Confirmé'      => 'Connaissances de base',
        'Spécialisé'    => 'Connaissances avancées',
        'Expert'        => 'Pratique professionnelle et expertise'
    ];

    public function load(ObjectManager $manager): void
    {
        foreach($this->levels as $title => $prerequisite) {
            $level = new CourseLevel();
            $level->setName($title);
            $level->setPrerequisite($prerequisite);
            $manager->persist($level);
        }
        $manager->flush();
    }
}
