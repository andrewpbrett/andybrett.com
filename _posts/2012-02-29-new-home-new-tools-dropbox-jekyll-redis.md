---
type: post
layout: main
title: "New Home, New Tools: Dropbox, Jekyll, Redis"
---
Updated Sunday, March 11, 2012

A couple weeks ago I started toying around with [Jekyll][1], an open-source, "blog-aware" static site generator. I really liked the idea of writing post content in Markdown with TextMate, and storing it in a git repository instead of a database. I got my old posts imported and [transformed from html to Markdown][2], and pushed the site to GitHub. However, I also wanted to have images as part of the site, which seemed outside the scope of what Jekyll was designed for, so I waited to actually make the switch.

To be honest, though, the image capture/storage experience on my previous hand-rolled solution was never really all that great. It was cumbersome to upload photos on mobile, and you couldn't see/manipulate previously uploaded images very well.

This got me thinking - what if I could just drop an image into a public Dropbox folder and have that publish it to my site? Dropbox has already made it easy to upload photos via their mobile app, so no need to reinvent the wheel there. Just like Jekyll has made it really easy to create and publish words, using Dropbox would make it really easy to publish photos.

The ideal solution would really be if Dropbox provided a way to just embed a photo gallery from a public folder. But alas - even with their [shiny new release][3] this week, there isn't an easy way to do this. 

So this morning I set out to kludge together a solution of my own. Using the ruby dropbox SDK gem, I have a script that pings Dropbox to see if any photos have been added to the "Public/Photos" folder (first checking the returned hash from Dropbox, and then checking each path for uniqueness against a local redis instance). If it finds anything new, it grabs the public link and uses that to create a new post in my Jekyll install. Then, using the ruby-git gem, it commits the new file and pushes to GitHub. When GitHub receives the push it regenerates the site with the new photo page. 

Pretty Rube-Goldbergian if I say so myself. For all the gory details, or if you'd like to try this yourself, the [code is on GitHub][4]. I'll be making various improvements as I have time. Pull requests welcome. 

[1]: https://github.com/mojombo/jekyll
[2]: https://github.com/andrewpbrett/jekyll_to_markdown
[3]: http://blog.dropbox.com/?p=1005
[4]: https://github.com/andrewpbrett/dropbox_to_jekyll