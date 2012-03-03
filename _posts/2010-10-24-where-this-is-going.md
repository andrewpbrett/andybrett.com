---
type: post
layout: main
title: "Where This Is Going"
---
If you're an astute follower of this space, or a site crawler, you may have
noticed some changes here recently. When I [migrated the
site](http://andybrett.com/new) last year from Blogger to a custom-built Rails
app, one of the main motivations was that I would have complete control over
the entire stack, and, perhaps more importantly, I would be able to use the
app as a sort of sandbox to work with awesome tools that I might not otherwise
have a reason to use.

Hence the rewrite. Rails 3 is out, and I wanted to give it a whirl. I'm happy
to say that this site is now built on Rails 3.0.1. The routes and gem files
really struck me as yet another example of the innovation that continues in
that community. I had also not had the chance to fully dive into HAML and SASS
until now. It took me all of about ten minutes to be fully sold on that new
syntax. I firmly believe that the actual way that code looks on the screen has
a profound effect on code quality, and damn does HAML/SASS look good.

Lastly, I made the [source code](http://github.com/andrewpbrett/andy3.0) for
the site available about a month ago. There is something psychological about
this that really gives you an extra push to make sure that what you're putting
out there is not only of good quality, but useful enough that someone might
actually want to clone it.

### Where This Is Going

In the interest of keeping the project road map open as well, here's what I'd
really like to do to make it useful. Eventually, I want all of the content I
put online to live on andybrett.com, and live there permanently. I want the
content types (photos, updates, posts, shares, etc.) to be handled and
displayed differently because they are fundamentally different. I want the
content to be social, meaning that I can tag people in the photos or copy
people on an update, and that the two people who might want them can get push
notifications for new content. And as a bonus, I want the ability to have some
content that isn't completely public. There isn't a single service right now
that comes close to having this functionality.

The desire for something like this is in part a reaction to a broader trend.
Right now we are provided, free of charge, with well-developed tools for
creating and sharing things online. It seems like there's a new one every week
or so. These tools are all "free," and in many cases they provide real,
tangible value on the upside, especially when they get large enough, like
Facebook. But there is also a real downside in that we lose control over that
content and the business decisions surrounding its use.

Eventually, for me, the [downside outweighed the upside](http://andybrett.com
/goodbye-facebook). I would have been happy to pay for a version of Facebook
that didn't have any display ads and didn't otherwise sell my information, and
I would likely still be using it. Such an offering is impractical, though,
because it would have drawn attention to this tradeoff that we make in
exchange for the "free" service. Not to mention caused quite a bit of hand-
wringing and "won't somebody please think of the children."

Not all services follow the Facebook model. Pandora One is a beautifully
simple transaction that uses *actual currency*. Three dollars a month.
Unlimited streaming music based on your tastes. No advertising. No data mining
that isn't completely anonymous (Chris Dixon has some good
[points](http://cdixon.org/2010/10/22/online-privacy-whats-at-stake/) on the
subtleties there).

Twitter currently provides value in that it is the only practical way for
people to subscribe to a new message medium: short-form one-to-many. In theory
you don't need Twitter for this, and in the [future you may
not](http://al3x.net/2010/09/15/last-thing-about-Twitter.html), but right now
you do. I still think the tradeoff makes sense - they make it extremely easy
to create and broadcast messages (not to mention consume them) and haven't yet
ratcheted up the negatives. They are staying much closer to being a protocol
than, say, Facebook, and have made that effort since the beginning.

But Twitter isn't without its own downsides. Long-time or frequent users of
the service will notice that there is a limit to how many of their own
messages they can retrieve, even through the API. I'm sure this content is
sitting on a server somewhere, but the point is that Twitter is under no
obligation to give it back to you, just like Facebook was under no obligation
to provide the export tool that they recently announced. In this case the
appropriate solution - which Twitter thankfully makes easy - is to publish the
messages yourself and syndicate them to Twitter. For a while I used status.net
but I'm planning to completely roll my own solution on this site soon.

And if huge, established services like Facebook and Twitter aren't obligated
to give you back your data, what about the smorgasboard of smaller services
that seem to crop up every day? Anyone out there planning to export their
photos from 'twitgoo' anytime soon? Instagram is a huge hit now, but is it
going to be around in three years?

What I take away is that in addition to better tools, we also need better
attitudes. Don't just spew your lifestream into the ether. Focus on [Quality](
http://en.wikipedia.org/wiki/Zen_and_the_Art_of_Motorcycle_Maintenance).
Produce (or at least publish) less content, but make it good! They say the
difference between an amateur and a professional photographer is that the
amateur shows you every photo she takes, while the professional only shows you
the cream of the crop. Hopefully this post is a step in the right direction.

