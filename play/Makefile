RG="BLOG"
APPNAME="conery-ghost"
IMAGE=ghost
DOMAIN="ghost.conery.io"
DB_USER=admin_$(RANDOM() #set this to whatever you like but it's not something that should be easy
DB_PASS=$(uuidgen) #Again - whatever you like but keep it safe! Better to make it random
DB_SERVERNAME=server$(RANDOM)
IP=$(curl -s ipinfo.io/ip)
#You can get a list of locations by running 
#az account list-locations --query [].name
LOCATION="westus2"
SKU=S1
DBSKU=B_Gen5_1

all: tail

rg:
	az group create -n $(RG) --location $(LOCATION)

db_server: rg
	az mysql server create --resource-group $(RG) \
		--name $DB_SERVERNAME --admin-user $(DB_USER) \
		--admin-password $DB_PASS --sku-name $(DBSKU) \
		--ssl-enforcement Disabled \
		--location $(LOCATION)

firewall1: db_server
	az mysql server firewall-rule create --resource-group $(RG) \
		--server $(DB_SERVERNAME) 
		--name AllowMyIP \
		--start-ip-address $(IP) \
		--end-ip-address $(IP)

firewall2: firewall1
	az mysql server firewall-rule create --resource-group $(RG) \
		--server $(DB_SERVERNAME) \
		--name AllowAzureIP \
		--start-ip-address 0.0.0.0 \
		--end-ip-address 0.0.0.0

createdb:
	mysql --host=$(DB_SERVERNAME).mysql.database.azure.com \
		--user=$(DB_USER)@$(DB_SERVERNAME) \
		--password=$(DB_PASS) \
		-e 'create database ghost;'

plan: createdb
	az appservice plan create --name $(APPNAME) \
		--resource-group $(RG) \
		--sku $(SKU) \
		--is-linux

webapp: plan
	az webapp create --resource-group $(RG) \
		--plan $(APPNAME) \
		--name $(APPNAME) \
		--deployment-container-image-name "$(IMAGE)"

storage: webapp
	az webapp config container set --resource-group $(RG) \
		--name $(APPNAME) \
		--enable-app-service-storage true

settings: storage
	az webapp config appsettings set --name $(APPNAME) \
		--resource-group $(RG) \
		--settings \
		database__client=mysql \
		database__connection__database=ghost \
		database__connection__host=$(DB_SERVERNAME).mysql.database.azure.com \
		database__connection__user=$(DB_USER@$DB_SERVERNAME) \
		database__connection__password=$(DB_PASS) \
		WEBSITES_PORT=2368 \
		WEBSITES_ENABLE_APP_SERVICE_STORAGE=true

logging: settings
	az webapp log config --application-logging true \
		--web-server-logging filesystem \
		--detailed-error-messages true \
		--docker-container-logging filesystem \
		--failed-request-tracing true \
		--level information \
		--name $(APPNAME) \
		--resource-group $(RG)

domain: logging
	az webapp config hostname add --webapp-name $(APPNAME) \
		--resource-group $(RG) 
		--hostname $(DOMAIN)

launch: domain
	open $(DOMAIN)

tail: launch
	az webapp log tail -n $(APPNAME) -g $(RG)

rollback:
	az group delete -n $(RG) -y

.PHONY:

