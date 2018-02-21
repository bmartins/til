# Mysql Master Master replication Error Solving

1. Identifying the problem

    SHOW SLAVE STATUS \G


1. Repairing

    STOP SLAVE;

1. Skiping 1 step

    SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1;

1. Restarting replication

    START SLAVE; 


___
#### References

https://www.howtoforge.com/how-to-repair-mysql-replication
