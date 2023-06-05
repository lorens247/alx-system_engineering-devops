# Web Infrastructure Design

## General
- You must be able to draw a diagram covering the web stack you built with the sysadmin/devops track projects.
- You must be able to explain what each component is doing.
- You must be able to explain system redundancy.

### LAMP
LAMP is a widely used web development software stack. It consists of the following components:
- Linux: It serves as the operating system on which the web stack runs.
- Apache: It acts as the web server software responsible for serving web pages to users.
- MySQL: It is a popular relational database management system used to store and manage data.
- PHP: It is a server-side scripting language that enables dynamic web page creation.

### SPOF
SPOF stands for Single Point of Failure. It refers to a critical component in a system that lacks redundancy or backup. If a SPOF fails, it can cause the entire system to fail. System redundancy aims to eliminate SPOFs by implementing backup components or systems that can seamlessly take over if a failure occurs.

### QPS
QPS stands for Queries Per Second. It is a metric used to measure the rate at which a system or database can process incoming queries or requests. A higher QPS indicates that the system can handle a larger number of queries within a given time frame, whereas a lower QPS may suggest potential performance limitations or bottlenecks. Monitoring and optimizing QPS is crucial for ensuring efficient system performance and capacity.
