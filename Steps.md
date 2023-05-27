#### Step 1: create docker container with 10 open ports. Forward port 80 and port 9090-9100. use the Alpine image because it is light. 
#### Step 2: attach to the container and update apk.
#### Step 3: apk add openrc.
#### Step 4: create the softlevel file: "touch /run/openrc/softlevel"
#### Step 5: start openrc with command: "openrc"
#### Step 6: download and install apache2 "apk add apache2"
#### Step 7: start the apache2 server - "rc-service apache2 start"
#### Step 8: add curl and tar - "apk add curl tar"
#### Step 9: download node_exporter with curl and open with tar "tar xvfz ..."
#### Step 10: copy node_exporter file into sbin. "cp node_exporter /usr/local/bin/"
#### Step 11: Add a user: "adduser -D -S -s /sbin/nologin node_exporter"
#### Step 12: Change ownership: "chown node_exporter:node_exporter /usr/local/bin/node_exporter"
#### Step 13: Start Node Exporter using nohup: "nohup /usr/local/bin/node_exporter > node_exporter.log 2>&1 &"
#### Step 14: Open browser and check both the server and the node_exporter ports.
#### Step 15: Go to /var/www/localhost/htdocs.
#### Step 16: git clone your repository
#### Step 17: Change httpd.conf file in /etc/apache2, set DirectoryRoot to whatever you need.
#### Step 18: restart apache
#### Step 19: download apache_exporter: curl -LO "https://github.com/Lusitaniae/apache_exporter/releases/download/v0.13.3/apache_e
xporter-0.13.3.linux-amd64.tar.gz"
#### Step 20: tar -xvfz apache_exporter(...).tar.gz
#### Step 21: cp -ivr apache_exporter(...) /usr/local/bin/apache_exporter
#### Step 22: run the apache_exporter in the background with nohup /usr/local/bin/apache_exporter --telemetry.address=:9102 scrape_uri=(server INTERNAL IP) > apache_exporter.log 2>&1 &
