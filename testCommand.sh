read -p "Enter 1st: " first
read -p "Enter 2nd: " second

[[ ${first} -eq ${second} ]] && echo "Your Test is: success" $? || echo "Your Test is: Failed"
