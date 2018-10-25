# Pimp the doctor

Projet realisé en equipe. Nous avions chacun bossé sur un/deux sujets. pour ma part j'ai travaillé sur celui-ci et sur Doctolib.

## Installation et execution

* Cloner le Repo
* Bundle install
* note : normalement la base est remplie. 
  ==> Sinon lancer la commande $ rails db:seed

## Verification des liens de tables (aide)

voici quelques script créés par mes soins pour t'aider a voir les liens existants:

En allant sur $ rails console :

Doctor.first.appointments.count
⇒ Le nombre de de Rdv du docteur. (j’aimerai mettre une condition Where name = “” ... tu peux m'aider ?)

Doctor.first.appointments.last
⇒ le dernier Rdv du 1er docteur

Speciality.find(Doctor.first.appointments.last.speciality_id).name		
  ⇒ La specialite du dernier Rdv du 1er docteur de la liste

Patient.find(Doctor.first.appointments.last.speciality_id)
  ⇒ Pour la specialite donnee du dernier Rdv du 1er docteur de la liste, en deduire le nom du patient


### schema MCD (to do)



