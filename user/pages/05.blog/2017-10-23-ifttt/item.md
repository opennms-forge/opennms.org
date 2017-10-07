---
title: The most practical signal method
date: 21:48 2017-10-23
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, ifttt]
---

OpenNMS Horizon 21 will provide [IFTTT](https://en.wikipedia.org/wiki/IFTTT) support for the first time.
iFor those who don't know this service: **IF T**his **T**han **T**hat is a free web-based service for automations.
And this will definitively revolutionize your alarm signaling!

But what's that all about?i

Some diehards might already know it's ancestor [onmsblink](https://github.com/opennms-forge/onmsblink) which was able to color USB LED to highest alarm severity color.
Now this feature was improved and in my opinion, like the title already told us, it really prettifies administrators live to get noticed when trouble looms up.
But first let me list some other approaches that I personally don't want to work with anymore.

### Email Notification
The email guys. Usually these are the same people who prefer doing nearly everything with Excel...

But come on, wake up!

I can't understand why people want to have an email for every outage.
I already get enough emails from humans and other sources.

### Dashboards
I prefer this way more than the email way.

Every monitoring system provides some kind of alarm overview in a more or less practical implementation.
Whether lists, arrays or diagrams can present your environments status in a very good way.

In this context I would also like to refer to an other amazing feature called [Statusbox](https://opennms.org/en/blog/2017-08-14-statusbox) available in Horizon 21.

### Ops Boards
Sometimes IT offices have big sceens at the walls or projections screens to present dashboards or diagrams like mention above.
To be honest, usually these things are supposed to impress guests or maybe bosses.
You often run into the issue that dashboards, alarm lists or diagrams which monitoring systems involves by default are designed to use on a usual monitor.

In other words: You can't read or recognize the stuff because it's to far away.
Fonts are too small or diagrams do not scale.

### Noise
Sounds when alarms occur.

I never tried it.
And I don't want to try it.

It -sounds- annoying.

But if you are interested, please have a look at [Alarm Sounds](http://docs.opennms.org/opennms/releases/latest/guide-admin/guide-admin.html#ga-alarm-sounds).

--

So let's get back to the original topic.

What's the probably most practical signal method?

In general it's a ligth.

It's true.

Believe me.

More precisely, it's a WiFi bulb with [IFTTT](https://en.wikipedia.org/wiki/IFTTT) support and of course a fancy lampshade.
With the new [IFTTT](https://en.wikipedia.org/wiki/IFTTT) feature we can trigger the lamp to colour the alarms severity color.

Whenever you enter your office you instantly see the health of your systems without touching a computer!
Do you have some time to get a cup of coffee, or do you have to start to fix issues immediately?

It reminds a bit on these fortune sayers' crystal balls.
However OpenNMS tells you the truth!

Check it out!

VIDEO vom Testrun

I'm currently using this hardware

* [Lightshade](http://www.ikea.com/us/en/catalog/products/70096377)
* [Bulb](https://eu.lifx.com/collections/featured-products/products/lifx-plus)

But it works with every other WiFi [IFTTT](https://en.wikipedia.org/wiki/IFTTT) bulb.
I would be marvellous to see some other setups.
So feel free to provide your setup on [chat.opennms.org](https://chat.opennms.org/) or [Twitter](https://twitter.com/opennms?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor).

Of course the new feature is well documented on [docs.opennms.org](http://docs.opennms.org/opennms/releases/21.0.0/guide-admin/guide-admin.html#ga-ifttt).

So long

