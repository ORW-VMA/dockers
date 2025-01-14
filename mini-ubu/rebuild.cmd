docker stop miniubu
docker container rm miniubu
pause
docker build --no-cache --progress=plain -t mini-ubu:latest .
docker run -d --name miniubu -p 1883:1883 mini-ubu
docker logs miniubu
docker exec -it miniubu bash