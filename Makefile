GW=37.218.241.98

certs:
	curl -k https://black.riseup.net/ca.crt > /tmp/ca.crt
	curl -k https://api.black.riseup.net/3/cert > /tmp/cert.pem

proxy:
	GW=${GW} ./shape &
	GW=${GW} ./leap-vpn.sh

check:
	curl https://wtfismyip.com/json

stop:
	pkill -9 shape


