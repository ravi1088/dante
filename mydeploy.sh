!#bin/bash
sshpass -p "ravi123" scp target/gamutkart.war ravi@172.17.0.2:/home/ravi/apache-tomcat-8.5.32/webapps
echo "Deployed successfully on tomcat1 server..."
echo "==============================================="
sshpass -p "ravi123" ssh ravi@172.17.0.2 /home/ravi/apache-tomcat-8.5.32/bin/startup.sh
echo "Tomcat1 server started successfully..."
echo "==============================================="
echo "*************************************************************************"
sshpass -p "ravi123" scp target/gamutkart.war ravi@172.17.0.4:/home/ravi/apache-tomcat-8.5.32/webapps
echo "Deployed successfully on tomcat2 server..."
echo "==============================================="
sshpass -p "ravi123" ssh ravi@172.17.0.4 /home/ravi/apache-tomcat-8.5.32/bin/startup.sh
echo "Tomcat2 server started successfully..."
echo "==============================================="
