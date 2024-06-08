---
title: RSS
date: 2023-09-01
description: "Feeds without fuzz."
tags: [rss, meta]
---

## What is RSS?

Originally, RSS stood for "RDF/Rich Site Summary" but was later changed to "Really Simple Syndication"

RSS is a way to subscribe to a website.
Whenever that website updates it writes its changes to a `XML` file.
You can then read this XML file and see what changed at a glance.

Many websites use RSS including YouTube, ~~Reddit~~ Lemmy, ~~Twitter~~ Mastodon, most news sites, and almost any blog out there.
For many blogs, RSS is the main way to distribute new posts.

RSS is experiencing a Renaissance at the moment:
Many people are now seeing the damages done by algorithmic feeds and want to go back to purely chronological feeds.
RSS provides a perfect infrastructure for this.

## How to read RSS?

First, you need a feed reader. On macOS and iOS I highly recommend [NetNewsWire](https://netnewswire.com).
For terminal fans [Newsboat](https://newsboat.org) is the way to go.
[Thunderbird](https://www.thunderbird.net/) is also a good choice but there are tons of programs that can read RSS feeds.

That's bascially it. Now you need to add some feeds and you are ready.

I recommend picking a reader that can also fetch the article without opening the browser and loading a ton of ads.

Pro tip: You can export your subscibtions to a `OPML` file and import them into any RSS reader.

## How to distribute RSS?

This is the hardest question to answer about RSS as there are endless possibilities.

The easiest way would probably be to use a service such as Mastodon that generates the feed automatically.
If that platform isn't for you, WordPress is a good way to host a blog.
I read about people setting up their own scripts that automatically update the feed for new posts.

I use [Hugo](https://gohugo.io) which is a _static site generator_.
It generates feeds automatically but lies somewhere between WordPress and writing your own scripts in terms of how tech savvy you should be.

## How to find RSS?

Go to a website you like, copy the URL and paste it into your RSS reader.
Modern feed readers can find RSS feed on their own, you just have to provide a link to the site you want to subscribe to.
If that is not the case, you could try adding `/index.xml` to the URL.

Some sites, like this one, also link to their RSS feeds.
Often those links are a the bottom of the website and are either marked as `RSS`, `Feed`, or just use the RSS logo.
I additionally provide links to my subprojects such as my [microblog](/micro) or my [photos](/fotos).
Feel free to add them to your reader.

## Conclusion

I think RSS is on the rise.
It's an old protocol that survived numerous challenges
It provides an escape from the algorithms and large social media companies.
It also provides a way for content creators to distribute their content on their own without any middleman.
