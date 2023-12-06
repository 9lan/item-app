#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Login info
echo "..Login to Docker Hub.."
echo "Username: "
read username
echo "Password: "
read -s password

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 $username/item-app:v1

# Login ke Docker Hub
docker login -u $username -p $password

# Mengunggah image ke Docker Hub
docker push $username/item-app:v1

