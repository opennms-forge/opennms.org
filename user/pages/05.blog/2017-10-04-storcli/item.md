---
title: Monitoring Storcli based Megaraid/LSI RAID controllers
date: 21:23 2017-10-04
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, snmp, wiki]
---

MegaRaid / LSI doesn't provide a cool solution to get RAID devices monitored.
They have some kind of SNMP agent which should provide information about the controllers.
Unfortunately this program seems to be developed halfhearted.
Instead of extending the -on every Linux distribution existing- snmpd they build an own tool.
Also it is only available for RedHat so dependency problems while installation are bound to occur when you aren't a RedHat fanboy...

As far as I know, there is also a Nagios/Icinga plugin, but usually you don't want to add a Nagios/Icinga system additionally into your environment.
But they do have a tool which is called Storcli.
It nearly has super cow powers and provides all information we need.
Unfortunately it is only a command line tool.
So lets create YAHBW (yet another handy bash wrapper)!

Would you like to know more? -> [Monitoring Storcli based Raid Controllers](https://wiki.opennms.org/wiki/storcli)
