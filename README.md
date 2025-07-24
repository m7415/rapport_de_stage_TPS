# Rapport de stage TPS

Ce template LaTeX est utilisable pour les rapports de stage des étudiants de l'école Télécom Physique Strasbourg. Il est fonctionnel et utilisable pour toutes les filières et toutes les années. Toutefois, il est clairement amémiorable, et toute âme charitable trouvant des choses à améliorer sont les bienvenu pour créer des pull request et arriver à un template digne d'être présenté à l'administration pour pourquoi pas, l'inclure dans l'intranet.

Enjoy, et bon stage à tous !

## Installation

Les fichiers nécessaires pour le fonctionnement du template sont:
- `logos/partenaire_strategique_img.png`
- `logos/logo-tps-unistra-court.png`
- `rapport de stage.cls`

Un exemple de fichier LaTeX utilisant le template est donné par le fichier `main.tex`

### Installation complète:
`git clone https://github.com/m7415/rapport_de_stage_TPS.git && cd rapport_de_stage_TPS`

### Installation uniquement des fichiers nécessaires
```
git clone https://github.com/m7415/rapport_de_stage_TPS.git && cd rapport_de_stage_TPS && \
rm -r Chapters/ main.* biblio.bib README.md
```

## Commandes implémentées par le template :

**Note** : Toute commande obligatoire peut tout de même contenir un argument vide (ex: `\title{}`)

| Commande                | Obligatoire | Description                                                                                                                                                     |
|-------------------------|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `\title`                | Oui         | Indique le titre du rapport                                                                                                                                     |
| `\subtitle`             | Oui         | Indique le sous titre du rapport                                                                                                                                |
| `\author`               | Oui         | Indique l'auteur (élève) du rapport                                                                                                                             |
| `\filiere`              | Oui         | Indique la filière de l'élève                                                                                                                                   |
| `\master`               | Oui         | Indique le master de l'élève                                                                                                                                    |
| `\promo`                | Oui         | Indique la promotion à laquelle l'élève appartient                                                                                                              |
| `\nomentreprise`        | Oui         | Indique le nom de l'entreprise                                                                                                                                  |
| `\logoentreprise`       | Oui         | Chemin vers le logo de l'entreprise                                                                                                                             |
| `\tuteurentreprise`     | Oui         | Indique le nom du tuteur de l'élève au sein de l'entreprise                                                                                                     |
| `\tuteurentreprisemail` | Oui         | Indique l'adresse mail du tuteur de l'élève au sein de l'entreprise                                                                                             |
| `\trigrammemention`     | Oui         | Indique la chaine de caractère qui sera placée dans le coin bas gauche du document final                                                                        |
| `\tuteurecole`          | Non         | Indique le nom du tuteur de l'élève au sein de TPS. Valeur par défaut: `HABET Aldane`                                                                           |
| `\tuteurecolemail`      | Non         | Indique le nom du tuteur de l'élève au sein de l'école. Valeur par défaut: `habed@unistra.fr`                                                                   |
| `\academicyear`         | Non         | Indique l'année scolaire actuelle. La valeur par défaut est automatiquement calculée en fonction du mois actuel (< septembre) lors de la compilation du fichier |
