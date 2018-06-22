---
title: Monitoring S.M.A.R.T.  
date: 18:32 2018-06-22
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [snmp, use-case,]
---

Modern RAID controller often provide some kind of alarming tools to stay informed when hard disks are failing.
But sometimes you don't have such cool tools and you need or may want to make sure to have at least one check running.
That's why hard disks provide "Self-Monitoring, Analysis and Reporting Technology", also known as SMART.
Using the smartctl command it's easy to get a hard disks health status.
With the help of SNMP extend it's even easier to provide this information so OpenNMS is able to monitor it.
The SNMP extend config can be rolled out on your nodes by using Puppet or Ansible.

Check out the wiki for more information
https://wiki.opennms.org/wiki/Smartctl
