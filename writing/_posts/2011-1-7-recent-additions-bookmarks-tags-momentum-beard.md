---
type: post
layout: main
title: "Recent Additions: Bookmarks, Tags, Momentum, and a Beard"
---
I recently implemented three new features on this site that I'm pretty happy
with. The first is the ability to store [bookmarks](/readings), independently
of any [services](http://www.delicious.com/) that might be subject to
"sunsetting". I had been using Google Reader for this purpose, and soon I'll
create a similar bookmarklet to make it even easier for me bookmark a page
without leaving it.

I've also fired up the [excellent acts-as-taggable-on
gem](https://github.com/mbleigh/acts-as-taggable-on) to let me add tags to all
bookmarks, photos, posts, and updates. I'm mainly using this right now to keep
some items private versus public, but I have some ideas for where I'd like to
extend it.

I'm using the "public" tag (more precisely, the lack of a "public" tag) on
posts created using the third new feature: a daily reminder email (a la [Oh
Life](http://ohlife.com/)) that gets sent with cron and ActionMailer. The
response gets parsed and creates a post that then gets tagged accordingly. Not
too shabby.

Building out these little features is a lot easier than what I've been working
on for the yet-to-be-released main project, but it's nice to take an hour
every once in a while to hack away on something and see instant results, most
often with Girl Talk on in the background. It's really easy to know what's
going to be useful to the end user when he's the same person that's writing
the code. For example, I've made 3-4 tweaks to the source as I was writing
this post to make my life a bit easier in the future.

Building something that's useful to other people, though, is even more
challenging, and hopefully even more rewarding when they start using it. We've
been building some really positive momentum in that direction, and it's
definitely started to feel "real" lately. The foundation is starting to
solidify and the first few attempts to build and extend upon it have gone
pretty smoothly. Hopefully that continues to be the case.

On a somewhat unrelated note, the other day I looked back at the git logs and
realized that the weekend that I actually started coding on the project was
the same weekend that I last had a full, clean shave:

![](http://dl.dropbox.com/u/256663/andybrett.com/fear_the_beard.jpg)

It was a coincidence, really.

