# Docker-Compose to up a complete dev-stack


## Main stack

#### GitLab

Url to access: git.* gitlab.*

Default auth
Username: root
But you must set the first password at the web ui


#### SonarQube

Url to access: ccquality.* sonarqube.*

Default auth
Username: admin
Password: admin

#### Jenkins
    
Url to access: delivery.* jenkins.*

No default auth, use the command `make delivery-password` to cat initial token

#### Redmine

Url to access: issues-tracker.* redmine.*

Default auth
Username: admin
Password: admin

## Complementar


#### PostgreSQL

Access at the host on default port and you can use the PgAdmin, url to access sql.* sqladmin.* pgadmin.*

Default auth:
Username: postgres
Password: postgres

#### Redis

No external access, only useb by the GitLab

#### Nginx

Used to redirect the http requests to correct server


## Tutorial

#### Prepare the environment

```shell
CN=*.<YOUR_DOMAIN> make ssl
```

Example:
```shell
CN=*.dev-stack.org make ssl
```



#### Run all

```shell
docker-composer up -d
```

## Remarks

If you don't have a DNS to resolve the name to your server, add this config at /etc/hosts in your local machine not at the server

```
<SERVER_IP> git.<YOUR_DOMAIN> gitlab.<YOUR_DOMAIN>
<SERVER_IP> sql.<YOUR_DOMAIN> sqladmin.<YOUR_DOMAIN> pgadmin.<YOUR_DOMAIN>
<SERVER_IP> delivery.<YOUR_DOMAIN> jenkins.<YOUR_DOMAIN>
<SERVER_IP> ccquality.<YOUR_DOMAIN> sonarqube.<YOUR_DOMAIN>
<SERVER_IP> issues-tracker.<YOUR_DOMAIN> redmine.<YOUR_DOMAIN>
```

It redirects directly to the https URL.