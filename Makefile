default:
	git pull
	ansible-playbook -i $(app_name)-dev.srikanth553.store, -e ansible_user=azureuser -e ansible_password=DevOps@123456 -e app_name=$(app_name) roboshop.yml
	
	