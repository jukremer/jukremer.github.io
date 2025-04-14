---
title: Selbsthosting
date: 2024-12-28T07:22:14+01:00
description: Kleiner Computer, große Pläne
tags:
  - selbsthosting
  - nixos
  - git
---

Seit etwa 2020 hat mich die Idee fasziniert, meinen *eigenen Server zu betreiben* – also die volle Kontrolle über Daten, Dienste und Medien zu haben. Vor allem auf Reddit, und dort besonders in den Communities [r/selfhosted](https://www.reddit.com/r/selfhosted) und [r/homelab](https://www.reddit.com/r/homelab), habe ich immer wieder spannende Projekte gesehen. Lange blieb das für mich ein Traum – zu wenig Zeit, zu wenig Geld. Aber im April 2024 war es so weit: Mein kleines Selbsthosting-Abenteuer begann.

## Hardware

- HP EliteDesk 800 G2 Desktop Mini
  - i5-6500 3,2 Ghz
  - 16 GB RAM
  - 512 GB SSD
  - Preis: 90 €
- Western Digital My Book USB 3.0
  - 8 TB HDD
  - Preis: 150 €

Ich hatte ein gutes Angebot für den Mini-PC auf [Mydealz](https://www.mydealz.de/) entdeckt und direkt zugeschlagen. Der EliteDesk ist klein, leise und trotzdem leistungsstark genug für einfache Serverdienste. Gegenüber einem Raspberry Pi bietet er deutlich mehr RAM und Flexibilität.

Bei der Festplatte war mir wichtig, dass sie **CMR** (Conventional Magnetic Recording) statt **SMR** (Shingled Magnetic Recording) verwendet, da CMR-Platten langlebiger sind – vor allem bei vielen Schreibvorgängen oder im Dauerbetrieb. [Dieser Artikel](https://www.reichelt.de/magazin/ratgeber/smr-cmr-welche-festplatte-eignet-sich-am-besten-fuer-welchen-zweck/) erklärt den Unterschied gut.

## Software

- [NixOS](#nixos)
- [Tailscale](#tailscale)
- [Jellyfin](#jellyfin)
- [NextCloud](#nextcloud)

### NixOS

Das Betriebssystem meiner Wahl ist [NixOS](https://nixos.org/). Hauptsächlich, weil ich Nix lernen wollte – eine funktionale, deklarative Sprache für Konfiguration und Paketverwaltung. Aber auch abseits davon hat NixOS viele Vorteile als Serverbetriebssystem.

**Deklarativ** bedeutet: Ich beschreibe in einer Konfigurationsdatei, _was_ das System tun soll – nicht _wie_. Dadurch ist mein Setup reproduzierbar, nachvollziehbar und schnell wiederherstellbar.

Viele Dienste lassen sich mit nur wenigen Zeilen Code aktivieren. Ich habe [meine Konfiguration](https://github.com/jukremer/nix-config) auf GitHub veröffentlicht, falls jemand reinschauen oder sie als Grundlage verwenden möchte.

### Tailscale

[Tailscale](https://tailscale.com/) ist ein Tool, mit dem man ganz einfach ein sicheres, privates Netzwerk (<abbr title="Virtual private network">VPN</abbr>) zwischen seinen Geräten erstellen kann – ganz ohne komplizierte Firewall-Einstellungen oder Portfreigaben.

Ich nutze es zum Beispiel, um von unterwegs sicher auf meinen Server zuzugreifen. Zusätzlich bietet Tailscale praktische Features wie **Serve** (Webdienste freigeben) und **Funnel** (temporärer externer Zugriff) – beides macht Selbsthosting kinderleicht.

### Jellyfin

Der eigentliche Anstoß, einen eigenen Server aufzusetzen, war mein Wunsch nach einer **Medienzentrale**. Über die Jahre habe ich viele Serien und Filme gesammelt. Irgendwann wurde die Sammlung zu groß, um sie einfach auf einer externen Festplatte mitzuführen.

Mit [Jellyfin](https://jellyfin.org/) ist das Medienmanagement ein Kinderspiel: Die Software durchsucht meine Dateien, lädt automatisch Metadaten wie Cover, Beschreibungen und Trailer herunter und stellt alles in einer hübschen Oberfläche dar – fast wie bei Netflix, nur selbst gehostet.

Einen Vergleich zu Plex kann ich nicht ziehen, da ich das nie ausprobiert habe. Aber Jellyfin erfüllt für mich alles, was ich brauche.

### NextCloud

[Nextcloud](https://nextcloud.com/) ist eine Open-Source-Alternative zu Cloud-Diensten wie Google Drive oder iCloud. Neben Jellyfin war es einer der Hauptgründe für meinen eigenen Server. Ich wollte weg von kommerziellen Cloud-Anbietern, sowohl aus **Datenschutzgründen** als auch, um **unabhängiger** zu sein.

Mit Nextcloud kann ich Dateien, Fotos und Dokumente speichern, synchronisieren, teilen – alles direkt auf meinem eigenen Server. Auch Kalender, Kontakte und Notizen lassen sich integrieren.

Die Einrichtung ist allerdings nicht ganz trivial, sogar unter NixOS. Beispielsweise muss man eine konkrete Version von Nextcloud festlegen, die auch manuell aktualisiert werden muss. Zusätzlich verwende ich das Tool [agenix](https://github.com/ryantm/agenix), um sensible Daten wie Passwörter verschlüsselt in meiner Konfiguration zu speichern. Agenix ist an sich ein spannendes Thema für sich, das ich vielleicht in einem eigenen Beitrag vertiefe.

## Epilog

Seit Januar ist mein Server abgeschaltet.

Der Lüfter des Mini-PCs sowie die externe Festplatte liefen dauerhaft – das führte zu einem nicht unerheblichen **Stromverbrauch** und konstantem **Hintergrundrauschen**. Beides ließe sich vermutlich optimieren, z. B. durch bessere Energieeinstellungen oder leisere Hardware. Dazu müsste ich mich aber erst mal reinfuchsen und zudem mehr Geld ausgeben.

Ein weiterer Grund: Ich habe den Server *kaum genutzt*. Meine iCloud läuft noch, Streaming mache ich momentan wenig und durch begrenztes Datenvolumen ist exzessives Streaming ohnehin keine Option.

Aber: Ich habe in den letzten 8 Monaten extrem viel gelernt – über Linux, Netzwerke, NixOS, Systemadministration, Sicherheit und mehr. Das Projekt hat mir gezeigt, wie viel man aus einem alten Mini-PC herausholen kann. Vielleicht wird der Server eines Tages reaktiviert – in neuer Form. Für den Moment war es vor allem: *ein spannendes Lernprojekt*.

Falls du Fragen hast oder selbst mit Selbsthosting starten willst: Schreib mir gern oder schau dir [meine Konfiguration](https://github.com/jukremer/nix-config) auf GitHub an. Vielleicht hilft dir mein Weg ja bei deinem Einstieg.
