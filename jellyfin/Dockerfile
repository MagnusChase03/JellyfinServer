from ubuntu

run apt update
run apt install -y curl gnupg openssl

run curl -fsSL https://repo.jellyfin.org/ubuntu/jellyfin_team.gpg.key | gpg --dearmor -o /etc/apt/trusted.gpg.d/jellyfin.gpg
run echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/$( awk -F'=' '/^ID=/{ print $NF }' /etc/os-release ) $( awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release ) main" | tee /etc/apt/sources.list.d/jellyfin.list

run apt update
run apt install -y jellyfin
run apt install -y ffmpeg

run mkdir ssl
run openssl req -x509 -newkey rsa:4096 -keyout /ssl/privkey.pem -out /ssl/cert.pem -days 365 -nodes -subj '/CN=jellyfin.lan'
run openssl pkcs12 -export -out /ssl/jellyfin.pfx -inkey /ssl/privkey.pem -in /ssl/cert.pem -passout pass:

run mkdir Media
workdir /var/lib

cmd jellyfin --webdir /usr/share/jellyfin/web