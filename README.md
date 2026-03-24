# Keycloak - Authentication and access management platforms, Identity and Access Management (IAM) tools 

#### Tutor
# https://dorokhovich.com/blog/keycloak-nginx-cluster
# https://www.youtube.com/watch?v=Kv3hhuyrpXg
# https://www.keycloak.org/server/reverseproxy
# https://rogitel.com/keycloak-installing-with-nginx-troubleshooting/s
####

# ssl
```bash
openssl req -x509 -out app/nginx/certs/localhost.crt -keyout app/nginx/certs/localhost.key \
  -newkey rsa:2048 -nodes -sha256 -days 365 \
  -subj "/CN=18.219.43.5" -extensions EXT -config <( \
   printf "[dn]\nCN=18.219.43.5\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=IP:18.219.43.5\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```

openssl req -x509 -out localhost.crt -keyout localhost.key \
  -newkey rsa:2048 -nodes -sha256 -days 365 \
  -subj "/CN=18.219.43.5" -extensions EXT -config <( \
   printf "[dn]\nCN=18.219.43.5\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=IP:18.219.43.5\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
   

```bash

├── Login Request
   |
   ├── User Identity Confirmed
       |
       ├── Authorization 
```
## Keycloak handles : Single Sign On
- Login forms 
- User authentication 
- Storing users  
- Once logged into Keycloak users don't have to  log in again to access a different application 

## Single Log Out

## login with social networks 
1. User tries to access the secure reactjs application 
2. Then user is redirected to the Keyclock server 
3. User authentication against Keyclock server
4. User is redirected back to the client application (reactjs) 

- Google 
- GitHub 
- Facebook 
- LinkedIn

## User Federation
- DataBase User Table
- NoSQL 

clean docker:
- sudo docker-compose down
- sudo docker system prune -f

run docker:
- sudo docker-compose up -d --remove-orphans
- sudo docker ps
- sudo docker exec ee3d31555276 curl -v http://localhost:8080

docker util:

find containrs ID:
- sudo docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}"

Install vim:
-  sudo docker exec -u 0 -it f25d80c2dd30 sh -c "apk add vim"

Logs:
- docker logs -f keycloak