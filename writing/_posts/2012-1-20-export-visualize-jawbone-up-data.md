---
type: post
layout: main
title: "Export and Visualize Your Jawbone UP Data"
---
About a month ago I wrote about some of the [issues][1] I had with the Jawbone UP. I'm still using the UP, and happy to report that I've fixed the last item on the list - the lack of a web interface and data export.

It's based on the [unofficial api][2] for the UP. When I saw this I published a little [ruby gem][3] for it and used that as the basis for an app.

I've published the (very primitive) app at [jawbone.heroku.com][4]. You can go there to see some demo data from my account. 

If you put in your login credentials for jawbone.com in the upper left there, you should see your data displayed instead of the demo. You can also then go to [jawbone.heroku.com/data.json][5] to download it.

If anyone does try it out, let me know on [twitter][6] or [email][7]. I have a lot of ideas for how to improve this further.

Note: the app isn't storing anything, including your login information. It literally does not have a database attached, so it'd be impossible to do so. Once you enter your login information the app gets a token that allows it to retrieve data from Jawbone and stores that token in a cookie. To "log out" you can just clear the cookie.

[1]: http://andybrett.com/bookmarks/77
[2]: http://eric-blue.com/projects/up-api/
[3]: https://github.com/andrewpbrett/jawbone-up-api
[4]: https://jawbone.heroku.com
[5]: https://jawbone.heroku.com/data.json
[6]: https://twitter.com/andrewpbrett
[7]: mailto:andy@andybrett.com
