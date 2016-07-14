---
type: post
title: "Pocketboard"
layout: main
---
I love bookmarking and reading things with [Pocket](https://getpocket.com). I also like to have a permanent record of the things I quote and recommend on it. The Pocket API doesn't have an endpoint for Recommended Items, so I wrote a small ruby script to check your public user profile on Pocket and extract the title, link, the quote you pulled, and any additional comment you added.

The script sends those over to [Pinboard](https://pinboard.in), where I'm reasonably confident they'll have a permanent home and will always be easily accessible via API.

I've posted the [source code to the script](https://gist.github.com/andrewpbrett/a6dd3bde020b2ec2b5b1157008c734c7), minus my Pinboard key.

I might also mirror these Recommended Items on andybrett.com in the future, a la the Daring Fireball linked list. For now I've added "Reading" to the nav and just linked directly to my Pocket page. 
