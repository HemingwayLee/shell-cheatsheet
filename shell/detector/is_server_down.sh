SERVERIP=www.google.com
NOTIFYEMAIL=test@example.com

ping -c 3 $SERVERIP > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Server $SERVERIP is down"
  # mailx -s "Server $SERVERIP is down" -t "$NOTIFYEMAIL" < /dev/null 
else
  echo "Server $SERVERIP is up"
fi
