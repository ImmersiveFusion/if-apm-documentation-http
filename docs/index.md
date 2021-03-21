# Overview

## Background

Software applications vary in size and complexity. The operations they perform may occur on a single physical or multiple virtual servers and can interact with other applications or services. As size and complexity increases, so does the need to know what those applications are doing.

Conventional solutions rely on using log files, process dumps, process attaching and debugging as well trace collection. Some methods are harder than others to leverage in a production environment and, as a result, the success of your application analysis and debugging work is limited. 

## Trace data

Trace data is granular and time-based.  The trace data can usually provide immediate insight into an application state and potential logic / performance issues. 

!!! note "Simple trace examples"
    1. "Loading from cache" at 4:11:01am
    1. "Saving to database" at 4:11:02am
    1. "Returning output" at 4:11:03am

Trace data will often contain correlation meta-data the allows tools processing the data to combine related activities into a single process.  As a result, operations that have multiple actions are naturally grouped together as a process stack. 

!!! note "Logical operation"
    1. Web page load
    2. Message processing from a message queue
    3. User registration

## Application Performance Monitoring (APM)

Solutions developers, software architects and support engineers use APM to assess the health of an application. The level of involvement with such a tool can vary, based on the application issue and individual expertise.

Today's Information Technology space has a lot to offer in terms of APM. From small web sites to large container clusters, applications today have the growing need to know what is happening "under the hood."  The APM solutions available are often web-based or simply rely on log analysis. As a result, even a powerful log aggregator cannot realistically show much that is useful in a single web page or log view. Users are forced to rely on filters, facets, reports, custom dashboards and generally may not have the option to view the application in real-time. As applications become more distributed, so does the complexity of being able to show enough at a single glance. This is where Immersive APM provides a unique developer experience.

## Immersive APM

![Top Image](img/top.png)

Immersive APM delivers real-time information, allowing you to see issues as they occur without having to wait minutes or hours as with other products. By leveraging the power of 3D and Virtual reality, Immersive APM users can quickly navigate to the granularity of information by simply being inside the world of the application. Ambient information Immersive APM provides can be viewed and assimilated at a glance providing organic context and relevance.

One of Immersive APM's most powerful features is a customizable feedback loop called the Nexus. It can be altered to meet the needs and interests of the customer/industry. Out of the box, Immersive APM generates load, throughput metrics and more; but when the feedback loop is enhanced with AI and machine learning, that's when everything comes together. All of the data Immersive APM collects can be reprocessed in the Nexus to extrapolate, predict, plan and so much more. The Nexus is enhanced with machine learning and tailors to the interests you as the user have about your application.
