---
title: Deploy a website using Git
date: 2023-09-25
description: ""
tags: [meta, git]
showComments: true
---
## Git-ftp

I tested a lot of different FTP programs including GUIs, TUIs and CLIs.
There might be a problem with the FTP server but I don't control that unfortunately.
The only program working flawlessly so far is [git-ftp](https://git-ftp.github.io/), a plugin for Git.
Not only is this perfectly integrated into git, which I am using anyway.
Also no errors occurred so far.
Plus I can automate the upload using [hooks](#git-hooks).

## Git hooks

The real MVP however is [Git Hooks](https://git-scm.com/docs/githooks).
Hooks are scripts that run automatically on certain Git events.

I did, for example, create a hook to automacally build the website after commiting a change.
Yes, this could introduce problems such as breaking changes and I end up with a broken website, but as I test it regularly this should not become a problem.

The second hook I created pushes the website to the FTP server whenever I push to the remote repository.

## Git submodule

I recently discovered that I can use `git submodule` to add the `public` folder created by Hugo.
This allows me to upload the repository to my pages repository on Codeberg and have the site mirrored there.
Secoundly, it allows me to upload the website with git-ftp without uploading everything else.

---

What awesome features of Git are you using?
