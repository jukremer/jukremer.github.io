---
title: "Easter eggs of this Websites"
date: 2023-09-19
description: "What you can't see is what you GET."
tags: [meta]
showComments: true
draft: true
---
## .well_known

As of [RFC ...]()

### OpenID

### Nostr

## `curl` easter eggs

There are famously [no easter eggs](https://daniel.haxx.se/blog/2021/12/06/no-easter-eggs-in-curl/) built into `curl`. That doesn't mean I can't make my own.

I set up `txt` files to display QR codes, which you can access via `curl`. There is one for the homepage, which is kind of stupid because you have to type in the URL to get a QR code for that URL.

```bash
curl https://jankremer.eu/qr.txt
```

I also set up codes for my [crypto](/tags/crypto) addresses. Just add `.txt` to the URL. Same for my [avatar](/pharmacist-0.webp). Fun fact: the `.png` file is only half the size of the `.txt` version.

```bash
curl https://jankremer.eu/xmr.txt
```

```bash
curl https://jankremer.eu/pharmacist-0.txt
```

I think you need to use a [nerd font](https://nerdfonts.com) for the QR code to show correctly.

> Why?

Just for fun.

## More?

What am I missing? Tell me in the comments or via [email](/about#kontakt).
