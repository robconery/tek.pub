RG="BLOG"
APPNAME="conery-ghost"
IMAGE=ghost
DOMAIN="ghost.conery.io"
DB_USER=admin_$RANDOM #set this to whatever you like but it's not something that should be easy
DB_PASS=$(uuidgen) #Again - whatever you like but keep it safe! Better to make it random
DB_SERVERNAME=server$RANDOM

#You can get a list of locations by running 
#az account list-locations --query [].name
LOCATION="westus2"
SKU=S1
DBSKU=B_Gen5_1

echo "Creating Resource Group"
az group create -n $RG --location $LOCATION

echo "Spinning up mysql $DB_SERVERNAME in group $RG Admin is $DB_USER"
az mysql server create --resource-group $RG \
  --name $DB_SERVERNAME --admin-user $DB_USER \
  --admin-password $DB_PASS --sku-name $DBSKU \
  --ssl-enforcement Disabled \
  --location $LOCATION

echo "Guessing your external IP address from ipinfo.io"
IP=$(curl -s ipinfo.io/ip)
echo "Your IP is $IP"

echo "Popping a hole in firewall for IP address $IP (that's you)"
az mysql server firewall-rule create --resource-group $RG \
  --server $DB_SERVERNAME \
  --name AllowMyIP \
  --start-ip-address $IP \
  --end-ip-address $IP

echo "Popping a hole in firewall for Azure services"
az mysql server firewall-rule create --resource-group $RG \
  --server $DB_SERVERNAME \
  --name AllowAzureIP \
  --start-ip-address 0.0.0.0 \
  --end-ip-address 0.0.0.0

echo "Creating Ghost Database - this relies on the MySQL client being installed locally and accessible from your PATH"
mysql --host=$DB_SERVERNAME.mysql.database.azure.com \
  --user=$DB_USER@$DB_SERVERNAME \
  --password=$DB_PASS \
  -e 'create database ghost;'

echo "Creating AppService Plan for Linux. If you want Windows change the script to remove the --is-linux flag"
az appservice plan create --name $APPNAME \
  --resource-group $RG \
  --sku $SKU \
  --is-linux

echo "Creating Web app"
az webapp create --resource-group $RG \
  --plan $APPNAME \
  --name $APPNAME \
  --deployment-container-image-name "$IMAGE"

echo "Creating the app settings"
az webapp config appsettings set --name $APPNAME \
  --resource-group $RG \
  --settings \
  database__client=mysql \
  database__connection__database=ghost \
  database__connection__host=$DB_SERVERNAME.mysql.database.azure.com \
  database__connection__user=$DB_USER@$DB_SERVERNAME \
  database__connection__password=$DB_PASS \
  WEBSITES_PORT=2368 \
  WEBSITES_ENABLE_APP_SERVICE_STORAGE=true

echo "Setting up logging"
az webapp log config --application-logging true \
  --web-server-logging filesystem \
  --detailed-error-messages true \
  --docker-container-logging filesystem \
  --failed-request-tracing true \
  --level information \
  --name $APPNAME \
  --resource-group $RG

echo "Setting up the hostname using $DOMAIN. If you see an error here you'll need to rerun the command once issues are addressed with DNS"
az webapp config hostname add --webapp-name $APPNAME \
  --resource-group $RG \
  --hostname $DOMAIN \

echo "Let's see that pretty site of yours..."
open http://$DOMAIN

echo "Tailing the logs... this could take up to 5 minutes to start"
az webapp log tail -n $APPNAME -g $RG


