#! bin/bash
docker build -t reactapp:latest .

docker tag reactapp:latest ajaydhanvi17/reactapp:latest

# docker login --username foo --password bar

# docker push ajaydhanvi17/myreactapp:latest
