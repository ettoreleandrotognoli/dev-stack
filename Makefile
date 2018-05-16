SSL_CN?=*.dev-stack.org


clean:
	rm -rf ./ssl/* ./data/*

%.key:
	openssl genrsa -out $@ 4096

%.crt: %.key
	openssl req -new -x509 -key $^ -out $@ -days 3650 -subj /CN=${SSL_CN}

ssl: ssl/server.crt ssl/server.key

delivery-password:
	docker-compose exec delivery cat /var/jenkins_home/secrets/initialAdminPassword