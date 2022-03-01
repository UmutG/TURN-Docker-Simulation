internalIp="$(ip a | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')"
externalIp="$(dig +short myip.opendns.com @resolver1.opendns.com)"

echo "listening-port=3478
tls-listening-port=5349
listening-ip="$internalIp"
relay-ip="$internalIp"
external-ip="$externalIp"

realm=$1
server-name=$1
lt-cred-mech

verbose
userdb=/usr/share/coturn/turnuserdb.conf
# use real-valid certificate/privatekey files
# cert=/etc/ssl/turn_server_cert.pem
# pkey=/etc/ssl/turn_server_pkey.pem
# no-stdout-log" | tee /etc/turnserver.conf

turnserver

echo "TURN server running. IP => "$externalIp" "
