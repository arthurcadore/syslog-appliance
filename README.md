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


## Setup

Make sure you have the following table on database pointed at `.env` file: 

```sql
USE syslogdb;

CREATE TABLE IF NOT EXISTS logs (
	    id INT AUTO_INCREMENT PRIMARY KEY,
	    datetime VARCHAR(16),
	    host VARCHAR(32),
	    source_ip VARCHAR(45),  
	    program VARCHAR(200),
	    pid VARCHAR(8),
	    message VARCHAR(200)
);
```
