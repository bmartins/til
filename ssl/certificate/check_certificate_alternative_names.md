# Check certificate alternative names

    openssl x509 -text -noout -in <path_to_pem>  | grep DNS
