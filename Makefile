SSL_CN?=*.dev-stack.org

%.key:
	openssl genrsa -out $@ 4096

%.cert: %.key
	openssl req -new -x509 -key $^ -out $@ -days 3650 -subj /CN=${SSL_CN}

ssl: ssl/server.cert ssl/server.key
