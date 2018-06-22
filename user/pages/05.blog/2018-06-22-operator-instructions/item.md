---
title: Operator Instructions
date: 18:32 2018-06-22
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [events, use-case,]
---

Monitoring services or metrics, getting alarms and notifications isn't complicated.
A more interesting part in case of alarms is: How to fix them (fast)?

Also in small or middle sized environments you can have a lot of different alarms. 
In best case every repsonsible employee is briefed and well trained to solve the issue...
Either way you should have some kind of documentation when you need it. 
Even if are doing on-call and get waked up in the middle of the night.

The best approach to be prepared well in alarm situations is, to have specific instructions or information on alarms. 
Since OpenNMS is event driven it's possible to arm events with additional, useful information.
OpenNMS events have an operator instruction field per default which can be used for this reason.

For every event you can add specific comments with instructions how to solve or analize the alarm.

In case of nodeLostService alarms it's more complicated to provide specific instructions because the event is generic and used for all service outages.
A good and simple approach is, to link to an internal wiki or documentation site.
Since services can be fetched in an alarm using $service it's very easy to create URLs like
https://my-wiki/$service to point to the corresponding documentation/howto.
