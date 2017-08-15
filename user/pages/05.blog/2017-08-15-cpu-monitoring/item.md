---
title: CPU monitoring
date: 21:51 2017-08-15
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, thresholding]
---

Oh really? What's special about it?

Yes... Ehm.. Not much.
But I'd like to talk about it because I think it could be useful.

In this times you usually have enough CPU performance and often you don't have to care about it.
And that's good.
I never had a really critical situation with high CPU usage.
Maybe I had luck.

Sure, sometimes some processes freak out and you want get informed when CPU is running on limit.
But that's not all.

Imagine that you have your own software product and you deploy daily the newest version.
Every day new code runs in your system.
So your environment is daily an other one then yesterday.

Things can happen...

...also your code can work different and maybe it eating more and more CPU.

But just small steps.

It's not extreme enough to make noise and trigger usual alarms like >90% etc.


So what do we need?

Figure out what's your usual CPU usage.
Often the usage is really straight.
Let's say 30% constantly while working hour.
So you need a threshold like above 40% constantly for a long time.
1 hour for example.

This one will definitely notice these small usage growths.
I told you before it's "not much" :-)
But a typical fallacy.

Of course you should have maybe 2 other thresholds like 85% over a small time span.
15 - 30 minutes maybe or 95% for 5 minutes for critical alarming.

I wrote some "ready to use" OpenNMS threshold configs which you can find in the wiki.

Would you like to know more? link to wiki
