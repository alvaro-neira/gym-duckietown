#!/bin/bash

echo "------------------------------------------------------------------------------------------"
echo "Habilitado host de ProactiveOffice en \"http://${PO_DNS_NAME}\"."
echo "Habilitado host de Saascore en \"http://${SAASCORE_DNS_NAME}\"."
echo "------------------------------------------------------------------------------------------"

service ssh restart

tail -f /dev/null


