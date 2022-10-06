from ubuntu

run apt update
run apt install -y curl gnupg systemctl

copy install.sh /
run bash install.sh

run apt update
run apt install -y jellyfin

cmd systemctl start jellyfin; tail -f /dev/null