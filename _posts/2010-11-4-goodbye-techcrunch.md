---
type: post
layout: main
title: "Reclaiming Fragmented Disk Space; Or, Thoughts Upon Leaving TechCrunch"
---
As the title indicates, the following is an attempt to do a bit of reflection
on the past 16 months that I've been working at TechCrunch as a developer. It
started out as an exercise just for me to clear my head so I can start my next
project fresh, but I decided to publish it because I think at least a couple
people might be interested in the experience.

### Headed West

Last May I got an email from a friend about an opportunity that he thought I
might be interested in. TechCrunch was looking for a hacker to work on
CrunchBase, their Ruby on Rails application that tracks (almost) everything
that happens in the technology world in a structured format. I was pretty
happy where I was, working for RecycleBank in New York City, but I had
recently come to the conclusion that I wanted to move to Silicon Valley, and
the timing seemed right for a few reasons.

After a couple of phone calls with Henry and Heather, I had the go-ahead to
book a flight to SFO for an interview at the TechCrunch office in Palo Alto.
At this point I decided that was good enough and put in my notice with
RecycleBank. Edit: looking at the dates on the emails (always a fun exercise),
it looks like I actually gave notice before even being contacted about the job
at TechCrunch. Funny how the mind revises history.

The interview went well and I took the weekend to think about things while
visiting some people in San Francisco and checking out the city. I vividly
remember getting a phone call from Mike while walking along a trail in the
Presidio - I stayed exactly in the same spot while we talked for fear of AT&T;
dropping the call (I honestly don't know how it went through in the first
place).

At the time, I wasn't really aware of the place that TechCrunch had in the
startup ecosystem. I was clearly aware that it existed, given that I linked to
them in a [post](http://andybrett.com/freedom-to-tinker) I wrote:, but I
probably couldn't have told you who Michael Arrington was as opposed to the
other writers.

### Trial By Fire

I took the offer, and things started quickly as I dove into the code for
CrunchBase. When I started, there was one other developer and between the two
of us we were, ostensibly anyway, responsible for CrunchBase. We also had a
part-time "strategic consultant" on special projects. However, it quickly
became apparent that other priorities would take precedence over all of these.
TechCrunch itself was having outages on a fairly regular basis, resulting in
lost page views and therefore lost revenue. I hadn't written anything non-
trivial in PHP nor worked with WordPress at all before. To boot, I hadn't done
a ton of server administration, much less on machines serving up hundreds of
thousands of pages a day. We put a number of short-term fixes in, but, after a
particularly bad outage in August we began the migration to a new hosting
provider who would provide a more managed hosting solution and take the
lowest-level operations problems off our plate.

For a time it worked pretty well, and the outages became far less frequent. I
even started to have time to devote to CrunchBase again, and started
[shipping](http://techcrunch.com/2009/11/10/crunchbase-facebook-connect/) some
[code](http://techcrunch.com/2009/12/17/crunchbase-update-twitter-follow/). It
was around this time when I remember having a conversation with Mike where I
told him that we were "pretty close" to having the network of blogs "running
on autopilot" - and he tried (not very hard) to contain his laughter. Looking
back I realize that he was right to have that reaction. Even if the mission-
critical stuff was taken care of, there would always be more projects, more
requests, and smaller bugs to squash. Running the network would always need at
least one person dedicated solely to that task, even if the server operations
had been outsourced.

Actually shipping code on CrunchBase felt *really good* though, to the point
where I would do that to relax during my "spare" time. The two hats were quite
different, and I wound up separating them as a result. I would often get into
the routine of waking up around 9, putting out fires and dealing with network
requests until 3 or 4, and then taking a nap for an hour. After waking up with
a clear head, I would work on CrunchBase until about 2 or 3. Lather, rinse,
repeat.

For the most part, though, my schedule was completely irregular. On a lot of
days I would wake up to a fire drill (or just a full inbox) and work from
home. Before I knew it, it was 3 or 4 pm and I would head to the office just
to see other humans. Or I would finally get going on something at the office
late at night when things were actually quiet and walk home through some
pretty empty streets early in the morning. For any given one-hour chunk of the
day/night, there has almost certainly been a day where I either went to, or
came home from, the office at that hour. It helped that I could walk from my
apartment to the office in about 10 minutes.

At the start of 2010 things were looking pretty good as far as CrunchBase was
concerned. We had increased the pace of edits by opening up account signup and
had what looked like some pretty interesting tools for visualizing and
analyzing the data in the works.

### Army Of One

However, the amount of time I had to devote to CrunchBase had diminished
severely. I was now the only developer working at TechCrunch, but I was
undeterred and convinced myself that we would be fine, at least until we could
hire more people.

But starting with the launch of the Nexus One on January 5th, the site
stability issues were back with a vengeance. The 4,000+ comments that flooded
the giveaway post in two hours brought the site to a crawl and then brought it
down completely, and a number of smaller outages followed soon after. Within a
few weeks we decided to move to the fully managed hosting of WordPress VIP.
Shortly before the transition was complete, though, and about 48 hours before
the iPad was released, an attacker exploited a vulnerability in one of the
network sites to deface and redirect techcrunch.com. If they were able to do
the same thing during the peak traffic for the Apple event, it would be, to
say the least, very bad. We found out later that they fully intended to do so.
I was awake and in the office for quite a few hours in a row leading up to
that event. We did not see another defacement, and the event passed with only
some minor performance issues (it was, after all, the launch of the iPad).

The move to WordPress VIP once again solved the core downtime and security
issues, this time for good, thanks to Barry, Raanan, Matt, and the rest of the
team at Automattic. I was no longer getting woken up, and could actually look
forward to major tech events without fear of the site crashing. Problems
further up the stack remained, however, and I was still splitting time between
handling requests and fires on the network and actually building product with
CrunchBase. Fortunately by the late spring we had doubled the size of the dev
team by hiring Ben, a Rails developer who was making some great strides in the
latter department. We also started moving towards a much-needed front-end
facelift for TC proper and restructuring of the content across the network.

### Almost

Over the summer I realized that I did not in fact want to be at TechCrunch
forever. Part of it was the realization that it had now been a full year of
"almost" being free of emergencies, and "almost" being out of the woods and
able to really dig in and write great software. Even the site redesign was
getting bogged down in non-technical issues. I could tell that even though
staying at TechCrunch would let me do some pretty awesome things, it was
always going to demand this overhead of putting out fires, and to put it
bluntly, dealing with shit. Technical janitorial duties, if you will.[1]

Now as Good Will Hunting will tell you, there's nothing wrong with being a
janitor, and just like Will's position at MIT, being a janitor in the right
place can really have its perks. Working at TechCrunch is not just another job
- it's a full-immersion, full-contact introduction to the world of startups
and technology. It was perfect for where I was at the time and I would do it
over again in a second.

That overhead wears on you, though, particularly when you're surrounded by
people who are shedding that overhead and you're seeing them passionately do
exactly what they believe needs to be done in this world, even at the expense
of a guaranteed paycheck. Generally speaking, the larger the company, the more
you're dealing with "overhead' and the less you're doing what you actually
*need* to be doing. Startups that don't do what they need to be doing die.

There's a deeper current running through that phrase - "what you *need* to be
doing." It's rooted in something that Steve Jobs noted in his 2005
commencement address. "Remembering that you are going to die is the best way I
know to avoid the trap of thinking you have something to lose." Life's too
short to spend it doing anything except what you're passionate about.

### Pirates

For all of those reasons, and many more, I've taken the leap. I have no
illusions about the fact that there will still be shit to deal with, but being
in control of what shit you deal with makes a world of difference. Mike's
[recent post](http://techcrunch.com/2010/10/31/are-you-a-pirate/) rang very
true. I would add one thing. Entrepreneurs do get utility out of the sense of
adventure and the freedom from a boss that comes with starting a company. But
they also get a tremendous amount from the sheer act of creation, out of
making something tangible where before there was nothing.

So that's what I'll be doing - creating something. The details of what I'll be
working on are still in flux, so I won't get into them here. I might try to
force myself into taking some time to completely unplug, but I honestly don't
think that will last very long.

Lastly, I wouldn't be writing this if it weren't for Mike and Heather. Heather
has shouldered an incredible amount of the responsibility for making sure that
TechCrunch is alive and well and what it is today, in the face of [all
obstacles](http://techcrunch.posterous.com/i-robot-157). She is, simply put,
[an inspiration](http://twitter.com/paulatdisrupt/status/25958602692). Mike,
for all of his infamously rough edges, is truly a good person. It would be
impossible to write some of the posts that he does without fundamentally
understanding entrepreneurs and this community. He thrives on conflict and
I've certainly had my share of those with him. But it's all rooted in his
remarkable drive to create things, and I respect him for that.

And, of course, for [the dogs](http://techcrunch.posterous.com/31543780).

[1] I picked this term out of the Hacker News
[thread](http://news.ycombinator.com/item?id=1737701) on the AOL acquisition
of TechCrunch. Many of the insights into the technical scene at TechCrunch on
that thread were surprisingly accurate, especially given that none of the
commenters actually worked there (though some are more accurate than others)

Thanks to [Paul Carr](http://www.paulcarr.com) and [Ben
Schaechter](http://twitter.com/bensign) for reading drafts of this.

