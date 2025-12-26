default:
	git pull
	ansible-playbook -i $(app_name)-dev.srikanth553.store, \
	-e ansible_user=azureuser \
	-e ansible_password=DevOps@123456 \
	-e role_name=$(app_name) \
	-e app_name=$(app_name) \
	roboshop.yml

all:
	git pull
	make app_name=frontend
	make app_name=mongodb
	make app_name=catalogue
	make app_name=redis
	make app_name=user
	make app_name=cart
	make app_name=mysql
	make app_name=shipping
	make app_name=rabbitmq
	make app_name=payment
	make app_name=dispatch
	
