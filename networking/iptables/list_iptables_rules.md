# List iptables rules

    iptables --table <table> --list

 - table can be one of _filter_, _nat_, _mangle_, _raw_, _security_
 - default table is _filter_


### Table description

 - _raw_ is used only for configuring packets so that they are exempt from connection tracking.
 - _filter_ is the default table, and is where all the actions typically associated with a firewall take place.
 - _nat_ is used for NAT
 - _mangle_ is used for specialized packet alterations.
 - _security_ is used for Mandatory Access Control networking rules 

___

#### References

https://wiki.archlinux.org/index.php/iptables
