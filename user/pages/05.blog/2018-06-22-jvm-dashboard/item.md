---
title: OpenNMS JVM Dashboard
date: 19:18 2018-06-22
author: Marcel Fuhrmann
body_classes: header-lite fullwidth blogstyling
taxonomy:
    category: javascript
    tag: [javascript, api]
---

OpenNMS provides by default some really useful metrics which present some kind of OpenNMS health status.
I'm really afraid that most OpenNMS users may not know this OpenNMS-JVM datacollection and it's usability.
The metrics can be used to analyze or optimize OpenNMS.
Basically we could call them "daemon statistics". For example, there are poller and collector thread graphs, report or also snmp trap statistics.

The datacollection can be activated by adding the opennms-jvm service onto the loopback interface on your OpenNMS server itself.

Once your datacollection works and since The OpenNMS Group provides official Grafana support https://grafana.com/plugins/opennms-helm-app we are able to present our metrics easily in a [Grafana Dashboard Website](https://grafana.com/dashboards/4046).

Just follow the docs on Grafana how to import a dashboard http://docs.grafana.org/reference/export_import/ and add [board 4046](https://grafana.com/dashboards/4046) into your Grafana instance.
