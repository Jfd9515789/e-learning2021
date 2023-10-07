# FRONT

## USERS

Via le dropdown:

1) Affichez le profil de l'utilisateur (ex : card...) ainsi que ses propres commentaires
2) Permettre la modification du profil
3) Permettre la modification du password (*)

Captcha pour le registration form (*)

## COMMENTS

1) Ajoutez la moyenne des notations pour les commentaires. N'effectuez le calcul que si le cours possède au moins deux
   commentaires

2) Lors de l'insertion d'un commentaire validez les champs :
    1) Title (5 car min et 120 car max)
    2) Rating (pas en dessous de 1 et pas supérieur à 5)
    3) Comment (notBlank)

   Un utilisateur ne peut poster qu'un seul commentaire par cours (*)

## NEWS

Sur base de l'entité crée en classe affichez via la navbar l'ensemble des news ne dépassant pas un mois d'ancienneté.

## HOMEPAGE

Affichez les trois derniers cours et les quatre dernières actualités

## TEACHERS

Affichez sur une vue les profs et leurs cours

## STATIC PAGE

About: page ergonomique et esthétique

## TEAM

Affichez des cards avec les admins et les super admins

# BACK

## Courses

Editer une formation

## Users

Afficher le rôle correctement dans le tableau et Ajouter un utilisateur

## Commentaires

Gestion des commentaires (tableau masquer supprimer et avertir l'auteur via son menu d'entrée)

# GENERAL

### Validation (pour les cours : champs pas vides, un seul cours (vérifier si le nom existe déjà) et validation sur le prix...)

### Messages flash