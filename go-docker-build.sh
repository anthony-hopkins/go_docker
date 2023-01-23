#!/bin/bash

# ARGS check for sanity.
if [[ "$#" -ne 0 ]]
then
  echo "This script requires ono arguments. Rerun without providing them."
  echo "Exiting....."
  exit 1
fi

# Clean up curl installation and unzip clutter
rm -rf ./go_docker-main
rm ./README.md
rm ./tmp.zip

# GLOBALS
APP_NAME="$(basename $(pwd))"


# Create <APP>.go file stub
echo "package main" > "${APP_NAME}".go
echo "" >> "${APP_NAME}".go
echo 'import "fmt"' >> "${APP_NAME}".go
echo "" >> "${APP_NAME}".go
echo -e 'func main(){fmt.Println("This is a stub")}' >> "${APP_NAME}.go"

# Use sed to replace <APP> with out GO project name to ensure various files are properly configured.
sed -i "s/<APP>/${APP_NAME}/g" ./{Dockerfile,docker-compose.yml}

# Self destruction
rm -f ./go-docker-build.sh
