# Get certificate from remote host

    echo | openssl s_client -showcerts  -servername <servername> -connect <servername>:<port>  2>/dev/null
