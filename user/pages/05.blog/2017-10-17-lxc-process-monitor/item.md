---
title: Monitor LXC container processes using HostResourceSwRunMonitor
date: 18:45 2017-11-27
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: wiki
    tag: [use-case, configuration, snmp, wiki]
---


Monitoring should always help in bad situations and provide a good overview about your system health status.
Especially service availability monitors are quite handy to ensure that all services are running on the correct machines.

In past I ran into an problem which was more a documentation issue than a classical monitor alarming issue.
We had some servers with LXC containers running.
Unfortunately these and other server went down because of some hypervisor issues.
After restarting all of them, the LXC containers didn't come online again because of wrong autostart configurations...

The biggest issue was:
We didn't know on which servers the LXC containers had run before.
So we had a lot of research to do to get find them all.

To get back to service availability monitoring mentioned above, I want to show you an example for LXC container monitoring based on OpenNMS' [process monitor](https://opennms.org/en/blog/2017-05-09-process-monitoring-snmp).
