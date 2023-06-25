#! bin/bash
docker build -t reactapp:latest .

docker tag reactapp:latest ajaydhanvi17/reactapp:latest

docker login --username ajaydhanvi17 --password Pritamaj8513@# 

docker push ajaydhanvi17/myreactapp:latest
