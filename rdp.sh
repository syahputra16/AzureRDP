#!/bin/bash
if [ -d "clouddrive" ]
then
    echo "Script by Myself"
else
    echo "Not In Cloud Shell, Please Run It In Azure SandBox" && exit
fi

temp=$(mktemp -d)
curl -s -L -k https://raw.githubusercontent.com/rockydares/AzureRDP/main/love.sh > $temp/love.sh
chmod +x $temp/love.sh
bash $temp/love.sh
