---
title: "Tell Me When"
layout: main
---
Notifications are [destroying][destroying] our [brains][brains]. That sounds hyperbolic, but there’s a real chance that it will become this era's equivalent of advertising cigarettes to children. In hindsight it will appear obviously bad, but in the moment it seems normal.

The best option currently available is to go nuclear - no notifications at all. My phone 1) buzzes when I get a phone call, and 2) silently shows new text messages and emails on the lock screen, but only from a short whitelist of people. This is far better than the defaults that most apps would set for you, but it does leave one longing for some kind of [magical assistant][magic] that could separate the wheat from the chaff and deliver the good stuff [respectfully][destroying].

If you don't give up and go nuclear, you can try to approximate this magical assistant now by customizing when and how you receive notifications. Messing around with these settings can feel like a productive and thoughtful activity - in the same way that trying out various fonts for your science fair posterboard felt way more important than working on the project - but it's busywork. There's also no way to get the kind of granularity you would need, even if you were perfectly precise with your configuration.  Two notifications that would follow the same rules and trigger the same sounds/actions on your phone might be an order of magnitude difference in terms of importance. For example, let's say you post a photo in a city far from your own. Two replies arrive: a reply of "Nice view" from someone you barely know; and a reply of "I live here now! How long are you here?" from someone you're fairly close with. These would *both* be handled according to the same rules right now, which is obviously wrong.

You could ask people to do even more work, to configure even more settings, maybe even group friends into [circles][circles] and further customize the notifications based on those. But this isn't work that humans should be doing. It is, however, perfect for machine learning. This is why we'll look back at the last decade as a terrible time for notifications - the potential for improvement is vast and we appear to be on the cusp of a number of things that will allow for huge quality of life improvements, if we choose to build them.

Back to this magical assistant. How would it work, and what will this new interaction look like?

The assistant (let's call it Moneypenny) would receive all your notifications, much like an assistant in the 1960's would screen all calls and visitors. Every notification gets metadata for every possible attribute that could affect how much you care about it. Time of day, content, sender, other people involved, an estimate of its time sensitivity. Each notification then gets scored on these attributes and Moneypenny makes a decision on whether it's worth your attention, either at all or right this second.

This only works well if you trust Moneypenny to actually tell you about things when it should - otherwise we'll just have replaced checking your phone 150 times a day with asking Moneypenny for updates 150 times a day (or more). If it's done right, however, you'll still have the back up of directly asking for literally all your messages, but that will eventually feel similar to going into your spam filter.

It also only works if it's easy to give feedback and train Moneypenny. If it gives you a notification and you wait until later to act on it, that should be interpreted as at least a partial signal that whatever it was could have waited. You'll be able to explicitly flag things as "this should have been delivered immediately" or "that wasn't important" and specify why.

Much of this will be done with voice. It will be easy to say "hold everything for the next couple hours" and have Moneypenny know that only the most urgent items should be let through, or "tell me when I get a reply on this email" and have it understand that it's just a one-off exception because the topic of the thread is dinner tonight, but normally emails can wait.

Speaking of things that can wait, it will also be easy to tell this assistant that you only want to hear about certain types of notifications (social, for example) in batches once per day, week, fortnight, whatever. It would then hold you to this commitment, like Odysseus to the mast, and only let you make specific queries ("when is Jane's birthday") rather than just mindlessly checking the feed to see "what's on TV".

The news feed and notification algorithm is Facebook's first attempt at building this assistant for you, but it's impossible to build a high quality assistant if your incentives are "engagement" and ad revenue instead of the quality of life for the person the assistant is supposedly for.

[destroying]: https://medium.com/swlh/how-technology-hijacks-peoples-minds-from-a-magician-and-google-s-design-ethicist-56d62ef5edf3#.ijah2tsi0
[brains]: https://en.wikipedia.org/wiki/Reinforcement#Intermittent_reinforcement.3B_schedules
[magic]: https://en.wikipedia.org/wiki/Her_%28film%29
[circles]: https://plus.google.com
