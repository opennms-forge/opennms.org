---
title: Monitoring SMART health status
date: 18:39 2017-11-27
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, snmp, wiki]
---

Monitoring hard disks is often implemented half hearted on manufactures side.
The most generic technology which should be available on all hard disks is [SMART](https://en.wikipedia.org/wiki/Smartmontools).
The funny part is. that it's not always possible to get these SMART information on a smart way.
So Administrators are forced to create a satisfying solution to be always informed if disks have issues.

Based on [Monitoring Storcli based Raid controllers](https://opennms.org/en/blog/2017-10-04-storcli) blog we have created an article about SMART health monitoring.
It's very useful in fake RAID but also in software RAID environments.

Would you like to know more? -> [Monitoring Smart health](https://wiki.opennms.org/wiki/smartctl)
