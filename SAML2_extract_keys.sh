#!/bin/bash

export KEYSTORE_PW="qwerty"
openssl pkcs12 -in keystore.p12 -password "pass:${KEYSTORE_PW}" -nocerts -nodes | openssl rsa  -out key.pem
openssl pkcs12 -in keystore.p12 -password "pass:${KEYSTORE_PW}"          -nodes | openssl x509 -out cert.pem

