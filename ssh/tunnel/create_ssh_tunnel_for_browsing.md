# Create ssh tunnel for browsing

    ssh -D 8123 -f -C -q -N me@example.com

After this, configure the browser for socks proxy pointing at localhost:8123
