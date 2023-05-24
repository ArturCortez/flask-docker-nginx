#### Step 1: create docker container with 2 open port. Forward port 80 and port 9100. use the Alpine image because it is light.
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
#### Step 18 restart apache
