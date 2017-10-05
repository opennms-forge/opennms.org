---
title: Monitoring Storcli based Megaraid/LSI RAID controllers
date: 21:23 2017-10-04
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, snmp, wiki]
---
You don't want to go to all your servers by hand and watching for red lights.
Monitoring disks and RAID volumes is a fundamental part.
Unfortunately manufactures for RAID controllers do all their own tooling and make it hard for generic monitoring.

In this article we show you how to extend the Net-SNMP agent and give you the possibility to monitor your RAID and Disks with Net-SNMP and give you the possibility to use any SNMP capable monitoring solution like OpenNMS.

For LSI MegaRAID controller you are probably familiar with the Storcli tool.
It nearly has super cow powers and provides all information we need.
We created a wiki article with all the bits an pieces you need to monitor your RAID and Disks with the Storcli tool and hope it makes your live easier.

Would you like to know more? -> [Monitoring Storcli based Raid Controllers](https://wiki.opennms.org/wiki/storcli)
