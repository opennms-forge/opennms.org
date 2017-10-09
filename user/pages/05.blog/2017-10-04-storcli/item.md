---
title: Monitoring Storcli based Megaraid/LSI RAID controllers
date: 18:23 2017-10-09
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [configuration, snmp, wiki]
---
Broken disks and degraded RAID volumes and nobody knows.
Monitoring disks and RAID volumes is a fundamental part and one of the starting points when it comes to rolling out a monitoring solution.

Unfortunately manufactures for RAID controllers do their own tooling and make it hard for generic monitoring.
If you are familiar with LSI MegaRAID controller, you probably use the Storcli tool.
It nearly has super cow powers and provides all information we need.

In this article we show you how to extend the Net-SNMP agent and give you the possibility to monitor your RAID and Disks with Net-SNMP and give you the possibility to use any SNMP capable monitoring solution like OpenNMS.
We created a wiki article with all the bits an pieces you need to monitor your RAID and Disks with the Storcli tool.
The article describes how to set minimal permissions for the SNMP user, supports multiple controllers and RAID volumes.
In case of an error, OpenNMS will tell you exactly which disks are broken and which RAID volumes degraded.

The wrapper scripts to extend the Net-SNMP agent are published in a [GitHub repository](https://github.com/opennms-config-modules/lsi-megaraid-storcli) we hope it makes your live easier.

Would you like to know more? -> [Monitoring Storcli based Raid Controllers](https://wiki.opennms.org/wiki/storcli)
