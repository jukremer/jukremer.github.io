---
title: Nix on macOS
date: 2024-03-14
description: Moving from Homebrew to Nix. Mostly.
tags:
- nix
---
For about a year, I've been fascinated by [Nix and NixOS](https://nixos.org). I don't remember exactly what fascinated me at first, probably the possibility to setup and configure my system using a single file. A few weeks ago, I decided to give it a serious try.

## Installation

To be honest this is not my first time installing Nix on my machine. I tried the official Nix installer and the "old" way to use Nix which is basically the same as any other package manager. I didn't see the point of having two package managers so I uninstalled Nix quickly after.

Then, a few weeks ago, I came across [this guide](https://nixcademy.com/2024/01/15/nix-on-macos/) and it instantly clicked with me. Having a single file in which I declare my complete system and then have it set up in a few minutes without rebooting is just infinitely cool. In Nix, this feature is called *flake*. The guide uses the [Determinate systems installer](https://github.com/DeterminateSystems/nix-installer) which sets up flakes by default. It also explains how to install Nix Darwin.

## Nix Darwin

Nix Darwin is a set of Nix modules that brings declarative configuration to macOS. It includes a bunch of options such as for the dock, Finder or the keyboard for example. It also gives the user basic configuration options for various programs. However I prefer to set up terminal based programs using [Home Manager](#home-manager) instead, because it supports even more programs.

What I do use extensively is the [Homebrew](https://brew.sh/) module to install not only GUI (graphical user interface) apps from Homebrew, but also from the App Store.

## Home Manager

For everything else, from terminal based programs to their configuration, I use [Home Manager](https://github.com/nix-community/home-manager?tab=readme-ov-file). It includes a huge set of modules and allows me to setup every non-GUI program in a declarative way. Still, sometimes you have to configure the "traditional way", meaning in the original configuration language. But still, I much prefer this over my cluttered `.config` directory.

## Nixvim

In the process of writing my Nix configuration, I became unsatisfied with my Neovim setup. I used to use [LazyVim](https://www.lazyvim.org) but it felt more and more bloated and slow on my 9 year old machine. For some time I used [Helix](https://helix-editor.com/) which has great defaults, such as language server protocol (LSP) and fuzzy finder integration. I really think Neovim should go in this direction. Unfortunately it lacks some features to make it my main editor, mostly support for [Typst](https://typst.app/) which is already added to the `master` branch. It also lacks a plugin system, but given such great defaults, there isn't that big of a need for it. Helix also features its own set of motions, and although I think they are not bad, maybe even better than Vim motions, the latter are so ubiquitously implemented that I would essentially use both all the time.

That's when I saw a video by *ThePrimeagen* in which he recommended [Kickstart](https://github.com/nvim-lua/kickstart.nvim/tree/master), a minimal Neovim starter configuration mainly written by *TJ DeVries*. It almost everything you need to get started and has insanely great documentation.

The only thing that bothered me was the use of [Mason](https://github.com/williamboman/mason.nvim) as a LSP package manager. For some people this might be the best way to install LSPs, but I don't understand why I would use a second package manager when I can just use Nix for everything. Helix has a list of supported LSPs and all you have to do is make sure they are in your `$PATH`.

Luckily, others already had the same issues and decided to write [Nixvim](https://github.com/nix-community/nixvim). Nixvim is a NixOS / Nix Darwin / Home manager module that lets you configure Neovim (almost) entirely using Nix. It uses Nix as the plugin manager and has great defaults and documentation.

I basically recreated Kickstart using Nixvim with some minor tweaks. It feels just as snappy as Helix and I love it.

## Conclusion

This is just the tip of the tip of the iceberg of what is possible with Nix. Next, I want to learn to write my own flakes to set up development environments. I should probably learn a bit of Nix language too. But to sum it up so far, I'm really happy and excited about this "new" way to manage my computer.
