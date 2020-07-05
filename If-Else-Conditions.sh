
read -p "enter okay: " lk
if [[ ${lk} -eq "ok" ]]
then
  echo  "correct"
else
  echo "wrong"
fi
#=========================

#EXAMPLE:
#-------

which httpd &> /dev/null         
httpd_status=$?

if [[ ${httpd_status} -eq 0 ]]
then
  echo "httpd is already installed in this host"
else
  echo "httpd is not installed on this host"
fi

