# Exercices 4.4 d'Organisation des ordinateurs

Les différentes résolutions sont organisés dans des dossiers préfixés du numéro de l'exercice suivi d'un titre `n-titre`.  
Dans les dossiers où il est pertinent, une Makefile a été placée afin de pouvoir compiler l'exécutable plus aisément.  

Les exercices assument l'environnement suivant:
 - Un système Unix ou Unix-like (tel que Linux ou FreeBSD) sur une architecture x86_64 (amd64)
 - Le compilateur GCC

## Utilisation de `make`

`make` est un utilitaire UNIX (probablement préinstallé) permettant d'organiser des projets en termes de *cibles* et de *recettes*.
Dans les dossiers où make doit être utilisé, un fichier nommé `Makefile` est placé, où l'utilisateur définit le travail
de la manière suivante:
```
CIBLE: [SOUS-CIBLES...]
       RECETTE
```
où `SOUS-CIBLES` est une liste d'autre cibles ou de fichiers (séparés par des espaces) étant les prérequis de la réalisation de `CIBLE`,
`RECETTE` est une liste de commandes à exécuter pour réaliser `CIBLE`.

Pour réaliser une cible, il suffit d'exécuter `make <cible>` (ou juste `make` pour la première cible définie) dans un dossier contenant
une `Makefile` et `make` s'occupera de sa réalisation.  

Dans le cadre des résolutions des exercices, il suffit ainsi au lecteur d'exécuter la commande `make` dans les dossiers concernés, de manière à compiler
la résolution de l'exercice.

## Si `make` n'est pas présent dans l'environnement

Il y a dans ce dossier un script nommé `all.sh` qui compile récursivement les exercices.  
Exécutez la commande `./all.sh` (si vous avez téléchargé les fichiers sur un système non-Unix, il est possible qu'il faille exécuter `sh ./all.sh` à la place, du à des problèmes de permission).
