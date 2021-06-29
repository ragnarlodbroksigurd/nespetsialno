#!/bin/bash
# Log in with a private key and public key pair

NAME=${1:-blank}

SIZE=${2:-4096}

DEST=${3:-/home/ragnar/Keys/}

# Public/Private key files
PRIK=wloginpem
PUBK=qlogin.pub

# ad-ent password
if [ -f "$PRIK" ] || [ -f "$PUBK" ]; then
	echo "A login by that name already exists"
	exit 0
fi


openssl genrsa -aes256 -out $PRIK $SIZE &&
openssl rsa -in $PRIK -out $PUBK -pubout

echo "kogda tebe ne nuhzo delat bolshiye"

exit
