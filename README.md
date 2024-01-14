# Wiki Platform

## Partie Back Office

### Gestion des Catégories (Admin)

L'administrateur peut créer, modifier et supprimer des catégories pour organiser le contenu. Il peut associer plusieurs wikis à une catégorie.

### Gestion des Tags (Admin)

L'administrateur peut créer, modifier et supprimer des tags pour faciliter la recherche et le regroupement du contenu. Les tags sont associés aux wikis.

### Inscription des auteurs

Les auteurs peuvent s'inscrire en fournissant des informations de base telles que le nom, l'adresse e-mail et un mot de passe sécurisé.

### Gestion des Wikis (Auteurs et Admins)

Les auteurs peuvent créer, modifier et supprimer leurs wikis. Ils peuvent associer une seule catégorie et plusieurs tags à leurs wikis. Les admins peuvent archiver des wikis inappropriés.

## Page d'accueil du Tableau de bord

Consultation des statistiques des entités via le tableau de bord.

## Partie Front Office

### Login et Register

Les utilisateurs peuvent créer un compte et se connecter. Les admins sont redirigés vers le tableau de bord, sinon vers la page d'accueil.

### Barre de recherche

Une barre de recherche AJAX pour trouver des wikis, catégories et tags.

### Affichage des derniers wikis

Affiche les derniers wikis ajoutés pour un accès rapide au contenu le plus récent.

### Affichage des dernières catégories

Présente les dernières catégories pour découvrir rapidement les thèmes récemment ajoutés.

### Redirection vers la page unique des wikis

En cliquant sur un wiki, redirection vers une page dédiée avec détails complets.

## Technologies requises

### Frontend

- HTML5
- CSS Framework
- Javascript

### Backend

- PHP 8 avec architecture MVC
- PDO driver

### Fonctionnalités supplémentaires

- Upload d'images en PHP avec gestion de formats et stockage sécurisé.
- Architecture MVC avec système de routage et autoload.
- Possibilité d'afficher des publicités.
- Gestion des permissions (Admin peut donner des permissions, archiver utilisateurs, tags, catégories, wikis, et annonces).

