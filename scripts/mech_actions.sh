#!/bin/sh
#
# ENO Mechanics actions script.
#

API_URL="https://api.enumivo.org"
WALLET_URL="http://127.0.0.1:8900/"
WALLET_NAME="enomechanics"
WALLET_PASS="password to eosmechanics wallet with benchmark permission key"
PATH="$PATH:/usr/local/bin:/usr/local/enumivo/bin/"

date
cleos -u "$API_URL" --wallet-url "$WALLET_URL" wallet unlock -n "$WALLET_NAME" --password "$WALLET_PASS"
cleos -u "$API_URL" --wallet-url "$WALLET_URL" push action enomechanics cpu '' -p enomechanics@benchmark -f
#cleos -u "$API_URL" --wallet-url "$WALLET_URL" push action enomechanics ram '' -p enomechanics@benchmark -f
cleos -u "$API_URL" --wallet-url "$WALLET_URL" wallet stop
