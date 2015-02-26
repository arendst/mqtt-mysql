CREATE DATABASE mqtt;
USE mqtt;

DROP TABLE IF EXISTS topic;
CREATE TABLE topic (
  top_id     int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  topic      text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS message;
CREATE TABLE message (
  mes_id      int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  message     text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS messages;
CREATE TABLE messages2 (
  timestamp   timestamp DEFAULT CURRENT_TIMESTAMP,
  topic_id    int(4) NOT NULL,
  qos         tinyint(1) NOT NULL,
  message_id  int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8

DROP TABLE IF EXISTS settings;
CREATE TABLE settings (
  setting     varchar(8) NOT NULL PRIMARY KEY,
  state       tinyint(1) NOT NULL,
  timestamp   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
