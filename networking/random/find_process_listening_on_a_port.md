# Find process listening on a port

    netstat -tulpn

will show you all processes listening on a port, after having the PID

    ls -l /proc/$PID/exe


### References

https://www.cyberciti.biz/faq/what-process-has-open-linux-port/
