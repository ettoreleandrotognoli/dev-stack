#Docker-Compose to up a complete dev-stack


##Main stack

####GitLab

Url to access: git.* gitlab.*


####SonarQube

Url to access: ccquality.* sonarqube.*

####Jenkins

Url to access: delivery.* jenkins.*

##Complementar


####PostgreSQL

No external access, but you can use the PgAdmin, url to access sql.* sqladmin.* pgadmin.*

####Redis

No external access, only useb by the GitLab

####Nginx

Used to redirect the http requests to correct server
