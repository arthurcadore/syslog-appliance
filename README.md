# Syslog-ng Appliance

This project provides a centralized syslog appliance based on Docker Compose, combining MySQL and Syslog-ng to collect and store log messages from networked devices.

---

## Overview

The appliance includes two main services:

- **MySQL Server**  
  Stores incoming syslog messages in a structured database, enabling easy querying and analysis.

- **Syslog-ng**  
  Collects syslog messages from network devices and forwards them to the MySQL database for storage.

This combination allows centralized logging, monitoring, and historical analysis of network events.