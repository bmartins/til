# Mysql Master Master replication configuration

1. Edit the /etc/mysql/my.cnf file on each of the hosts. Add or modify the following values:

### server 1
    
    [mysqld]
    server_id           = 1
    log_bin             = /var/log/mysql/mysql-bin.log
    log_bin_index       = /var/log/mysql/mysql-bin.log.index
    relay_log           = /var/log/mysql/mysql-relay-bin
    relay_log_index     = /var/log/mysql/mysql-relay-bin.index
    expire_logs_days    = 10
    max_binlog_size     = 100M
    log_slave_updates   = 1
    auto-increment-increment = 2
    auto-increment-offset = 1


### server 2

    server_id           = 2
    log_bin             = /var/log/mysql/mysql-bin.log
    log_bin_index       = /var/log/mysql/mysql-bin.log.index
    relay_log           = /var/log/mysql/mysql-relay-bin
    relay_log_index     = /var/log/mysql/mysql-relay-bin.index
    expire_logs_days    = 10
    max_binlog_size     = 100M
    log_slave_updates   = 1
    auto-increment-increment = 2
    auto-increment-offset = 2

1. Restart the servers


1. Configure the replication users on each host


    `GRANT REPLICATION SLAVE ON *.* TO 'replication'@'x.x.x.x' IDENTIFIED BY 'password';`


1. Configure Database Replication

### server 1

    SHOW MASTER STATUS;

    mysql> SHOW MASTER STATUS;
    +------------------+----------+--------------+------------------+
    | File             | Position | Binlog_Do_DB | Binlog_Ignore_DB |
    +------------------+----------+--------------+------------------+
    | mysql-bin.000001 |      277 |              |                  |
    +------------------+----------+--------------+------------------+
    1 row in set (0.00 sec)




#### References

(https://linode.com/docs/databases/mysql/configure-master-master-mysql-database-replication/)
