CREATE DATABASE mqtt;
USE mqtt;

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  timestamp   timestamp DEFAULT CURRENT_TIMESTAMP,
  topic       text NOT NULL,
  qos         tinyint(1) NOT NULL,
  message     text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS settings;
CREATE TABLE settings (
  setting     varchar(8) NOT NULL PRIMARY KEY,
  state       tinyint(1) NOT NULL,
  timestamp   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
