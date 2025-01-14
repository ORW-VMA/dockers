# dockers

# 

Command | Descrition
---------|----------
`docker build -t mini-ubu:latest .` | Vytvorenie image z Dockerfile
`docker build --no-cache --progress=plain -t mini-ubu:latest .` | Vytvorenie image z Dockerfile
`readme.md` | this getting started guide

``` text
 docker build --no-cache --progress=plain -t mini-ubu:latest .
 docker run -d -p 1883:1883 -p 9001:9001 --name miniubu mini-ubu
 docker logs miniubu
 
 docker exec -it miniubu bash
 
 docker tag mini-ubu vladomorw/mini-ubu:latest
 
 cf login
 cf push
 
 ```
