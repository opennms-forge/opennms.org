---
title: The most practical signal method
date: 21:48 2017-10-23
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, ifttt]
---

People familiar with production lines know [Stack Lights](https://en.wikipedia.org/wiki/Stack_light) to indicate the status of a machine.

Wouldn't it be cool to have something similar as a status indicator for your IT-Infrastructure?
This question is probably ~20 years old and ended up with things like the [USB Table Traffic Light](https://shop.netways.de/produkt/nagios-usb-ampel-medium/) you can buy now for arround 70,-€.
Some diehards of OpenNMS might already know it's ancestor [onmsblink](https://github.com/opennms-forge/onmsblink).
It uses the [blink1](https://blink1.thingm.com) USB multicolour  LED and shows the overall status using the highest outstanding alarm severity.

Instead of using USB and dealing all the time with weird scripts to make things happen, Christian Pape developed at DevJam 2016 a very powerful generic [IFTTT](https://en.wikipedia.org/wiki/IFTTT) integration which will be available in Horizon 21.
With using the IFTTT service you can create rules and trigger Internet of Thing devices with your OpenNMS instance and has a lot of potential.

To give you an example, I'll show you how I use a [LIFX WiFi internet capable multicolour Light Bulb](https://eu.lifx.com/collections/featured-products/products/lifx-plus) with a fancy [IKEA Light Shade](http://www.ikea.com/us/en/catalog/products/70096377) and the IFTTT web service.
The use case is similar like with the USB blink.
To indicate the status with the color of the Light Bulb.
The funny part, cause the Light Bulb uses WiFi and is internet enabled, you can place the bulb **wherever** you want.

I've placed it in my office and I can see instantly the health of my systems without touching a computer.
There is nothing more relaxing, being welcomed with a fresh green light in the morning and can go to grab a cup of coffee.

We have published the example as part of our [IFTTT documentation](http://docs.opennms.org/opennms/branches/develop/guide-admin/guide-admin.html#ga-ifttt).
I hope you get inspired how you can connect things with the internet and trigger the real world with OpenNMS.

It would be marvellous to get some of your stories.
Feel free to connect on [chat.opennms.org](https://chat.opennms.org/) or [Twitter](https://twitter.com/opennms?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor).

So long
