read -p "Which Tomcat version do you want to install..?  " Version

M_V=$(echo ${Version} | cut -c 1)

url=https://mirrors.estointernet.in/apache/tomcat/tomcat-${M_V}/v${Version}/bin/apache-tomcat-${Version}.tar.gz


wget ${url}
tar -xvf  apache-tomcat-${Version}.tar.gz

rm -rf apache-tomcat-${Version}.tar.gz

cd /root/ShellScripts/apache-tomcat-${Version}/bin

./startup.sh

read -p  "Do you want to change Tomcat's PORT..?(y/n) " port

[[ ${port} == "y" ]] && vi /root/ShellScripts/apache-tomcat-${Version}/conf/server.xml || echo "you have choosen Default Port for your Tomcat"

