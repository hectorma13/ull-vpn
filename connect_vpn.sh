#!/bin/bash

# Connection data
GATEWAY="vpn.ull.es"
IPSec_ID="ULL"
IPSec_SECRET="usu4r10s"
USERNAME="Your_User"
PASSWORD="Your_Password"

# Connect with vpnc
echo "Connecting to the ULL VPN..."
sudo vpnc-connect <<EOF
$GATEWAY
$IPSec_ID
$IPSec_SECRET
$USERNAME
$PASSWORD
EOF

# Check if the connection was succesful
if [ $? -eq 0 ]; then
    echo "VPN connected successfully."
else
    echo "Error connecting to the VPN."
fi
