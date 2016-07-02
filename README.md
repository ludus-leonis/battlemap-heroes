# Battlemap Heroes

## Einleitung

Battlemap Heroes ist ein freies Pen-and-paper Brett-Rollenspiel von [LUDUS LEONIS](http://ludus-leonis.com/battlemap-heroes).

Wenn du Battlemap Heroes lediglich spielen möchtest, sind die Inhalte dieses Repositories nicht für dich von Belang. Besuche einfach die [Projekt-Homepage](http://ludus-leonis.com/battlemap-heroes), denn dort findest du stets die aktuellen PDFs zum Download.

Das Projekt ist derzeit noch in der Beta-/Testphase. Du bist herzlich eingeladen, dich daran zu beteiligen, dass Battlemap Heroes den nötigen Feinschliff erhält.

## Über dieses Repository

In diesem GIT-Repository findest du LaTeX-Quellen, um Battlemap Heroes als Basis für eigene Brett-/Rollenspielprojekte zu benutzen, oder eigene Missionen zu verfassen.

* `fonts` enthält die für die PDFs benutzten Schriftarten.
* `images` enthält die im PDF eingebetteten Illustrationen.


## System-Voraussetzungen

Dieses Repository benötigt [LaTeX](www.latex-project.org), ein Textsatzsystem, in dem alle Texte und Layoutinformationen als Textdateien vorliegen. Mittels einem Compiler können diese Texte in z.B. PDFs übersetzt werden. NIP'AJIN nutzt als Compiler `xelatex` und ist mit TeX Live 2015 unter Ubuntu 16.04 getestet. Die Makefiles und Scripts setzen ein unix-oides Betriebsystem voraus, lassen sich aber mit ein wenig gutem Zureden wohl auch unter Windows nutzen.

## Schnellanleitung

Wenn alle Voraussetzungen erfüllt sind, kannst du mit
```
core$ make de
```
die deutsche Version der Regeln als PDF erzeugen. Es wird ein `out` Ordner angelegt, in dem du das PDF findest.

Welche anderen Sprachen bereits verfügbar sind, entnimm bitte dem `Makefile`.

## Mithilfe

Wenn du Battlemap Heroes verbessern oder übersetzen möchtest und dazu dieses GIT Repository nutzt, stelle bitte sicher, dass du stets vom `develop` Branch aus arbeitest (featurebranch). Gerne nehme ich Pull-Requests für Verbesserungen entegen, achte jedoch auf eine sprechende und saubere Commit-History.
