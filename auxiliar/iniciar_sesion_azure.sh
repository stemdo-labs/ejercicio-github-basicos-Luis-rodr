#!/bin/bash

# Iniciar sesión en Azure CLI
az login --service-principal --username $1 --password $2 --tenant $3