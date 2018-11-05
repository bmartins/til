# Check which schemas ssh server supports

    nmap --script ssh2-enum-algos -sV -p <port> <host>
