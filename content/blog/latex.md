---
title: LaTeX
date: 2023-01-12T15:35:23+01:00
description: "Wie ich Word durch LaTeX ersetzte."
tags: [git, latex, uni]
draft: false
---
Im Rahmen meines Wahlpflichtpraktikums schreibe ich aktuell an meiner zweiten größeren Projektarbeit. Die einzige andere Projektarbeit war bisher die für das Praktikum Pharmazeutische Technologie, welche, Stand jetzt, noch nicht vollständig abgeschlossen ist.

Für diese Arbeit entschieden wir uns jedoch für *Microsoft Word*. Also im Grunde wurde uns diese Entscheidung fast abgenommen, da die Universität Regensburg uns das *Office 365* zur Verfügung stellt und es damit auch bei uns Studenten den De-Facto-Standard darstellt. Zudem erleichtert es das Arbeiten im Team doch sehr.

Formatierungen sind jedoch immer ein Kampf. Daher wollte ich versuchen, [LaTeX](https://www.latex-project.org) für diese Arbeit einzusetzen. Ich kannte *LaTeX* vor allem aus mathematischen Kursen an der Uni und hatte schon oft gehört, dass es Setzen (von [Satz](https://de.wikipedia.org/wiki/Satz_(Druck))) deutlich vereinfachen soll. Aber nicht nur das Schreiben mathematischer Arbeiten macht es deutlich angenehmer, durch das einbinden einiger zusätzlicher Pakete werden wissenschaftliche Texte zum Kinderspiel.

## Über LaTeX

> **LaTeX** [ˈlaːtɛç] ist ein Softwarepaket, das die Benutzung des Textsatzsystems TeX mit Hilfe von Makros vereinfacht. *LaTeX* wurde Anfang der 1980er Jahre von *Leslie Lamport* entwickelt.Der Name bedeutet so viel wie *Lamport TeX*. Die Entwicklung wurde seit den 1990er Jahren von einer Anzahl Entwicklern weitergeführt. Heute ist *LaTeX* die populärste Methode, *TeX* zu verwenden.

— <cite>[Wikipedia: LaTeX](https://de.wikipedia.org/wiki/LaTeX)</cite>

*LaTeX* funktioniert ähnlich wie *HTML* oder *Markdown*: Zunächst wird die Formatierung von Text getrennt. Bei WYSIWYG[^1]-Textverarbeitungsprogrammen wie *Word* sieht man direkt, wie das gedruckte Dokument hinterher aussehen wird. Das macht es für viele Nutzer einfacher, zwingt sie aber auch dazu, sich direkt und unmittelbar mit der Formatierung zu beschäftigen. *LaTeX* trennt dies zunächst, gibt aber dennoch eine übersichtliche Struktur vor. Zudem sind die Standard Formatvorlagen deutlich schlichter und zumindest für mich wesentlich ansprechender als die von *Word* (Warum ist alles blau und wieso *Calibri*?!). Ja, die Voreinstellungen von *Word* lassen sich überschreiben, aber das muss man auch erstmal machen.

[^1]: What you see is what you get.

Funktionen wie ein Inhalts- oder Literaturvrezeichnis lassen sich in *Word* zwar auch realisieren, sind in *LaTeX* wesentlich simpler. Zudem lässt sich *LaTeX* durch Pakete nahezu unendlich erweitern und deckt dadruch auch jeden noch so speziellen Fall ab.

Ein weiterer Punkt, warum ich *LaTeX* bevorzuge ist, dass ich jeden Texteditor benutzen kann. Ich nutze am liebsten *VS Code*, aber natürlich kann jeder beliebige Editor verwendet werden.

Das einzige, was mit *Word* sicher einfacher wäre ist das einbinden und beschriften von Grafiken. Da ich einige davor in meine Projektarbeit verwende, brauchte ich hierfür eine Lösung. Diese habe ich mit [Inkscape](https://inkscape.org/de/) gefunden. Hiermir lassen sich Bilder bearbeiten und beschriften und anschließend als *LaTeX*-Dokument speichern. Diese lassen sich dann ganz einfach einbinden.

## Fazit

Für wen *Word* und ähnliches schon immer eine Qual war oder wer Vorerfahrung mit Texteditoren und Skriptsprachen hat, dem kann ich *LaTeX* nur ans Herz legen. Ganz einfach lassen sich wunderschöne Dokumente herzaubern. Vor allem der Font *Computer Modern* hat es mir sehr angetan. Eventuell werde ich die Projektarbeit demnächst hier hochladen.

---

## Technische Spezifikationen

Kurzer Nachtrag über meine Arbeitsweise mit *LaTeX*: Als Texteditor benutze ich [VS Code](https://code.visualstudio.com), da ich diesen super übersichtlich finde und vor allem die Erweiterungsmöglichkeiten sehr schätze. Für *LaTeX* sind dies vor allem [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop) und natürlich [git](https://git-scm.com) (vorinstalliert). Des Weiteren benutze ich die [MacTeX-Distribution](https://www.tug.org/mactex/), welche ich über [Homebrew](https://brew.sh) installiert habe.

### Verwendete Pakete

* **babel**: Sorgt für die Unterstützung verschiedener Sprachen. Ich schreibe die Projektarbeit zwar auf Englisch, jedoch brauche ich ab und zu mal Deutsche Begriffe und damiteinhergehend Umlaute etc.
* **biblatex**: Verbessertes Literaturverzeichnis, alternative zu **bibtex**.
* **booktabs**: Verschönert und vereinfacht Tabellen in *LaTeX*.
* **chemformula**: Erleichtert das Setzen von chemischen Formeln enorm und sorgt dafür, dass diese auch richtig angezeigt werden.
* **hyperref**: Für Links und Metadaten.
* **longtable**: Die verwendeten Materialien habe ich alle in riesigen Listen. *LaTeX* kann standardmäßig nicht besonders gut mit großen Tabellen umgehen, dieses Paket hilft dabei.
* **microtype**: Lässt alles schöner aussehen, praktisch schwarze Magie.
* **siunitx**: Das wahrscheinlich beste Paket überhaupt, simple aber hat Power. Sorgt für perfektes setzen von Einheiten, mit oder ohne vorangehenden Wert. Zudem enthält es eine Funktion, die Werte in Tabellen um den Dezimalpunkt anordnen kann. Ein Traum.
* **textgreek**: Erleichtert das verwenden von griechischen Buchstaben im Text.
* Zusätzliche Pakete die ich an der Stelle nicht weiter erleutern werden: **color**, **csquotes**, **fontenc**, **glossaries**, **graphicx**, **tikz** und **tocbibind**.
