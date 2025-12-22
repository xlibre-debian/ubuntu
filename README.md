# Ubuntu Repository for XLibre

**DO NOT USE. This is UNTESTED! NEVER install this on your host!**
*Once it is confirmed to work then this warning will be removed.*

```sh
sudo apt-get update
sudo apt-get install -y ca-certificates curl

sudo install -m 0755 -d /usr/share/keyrings
curl -fsSL https://mrchicken.nexussfan.cz/publickey.asc | gpg --dearmor | sudo tee /usr/share/keyrings/NexusSfan.pgp > /dev/null
sudo chmod a+r /usr/share/keyrings/NexusSfan.pgp

cat <<EOF | sudo tee /etc/apt/sources.list.d/xlibre-debian.sources
Types: deb
URIs: https://xlibre-debian.github.io/ubuntu/
Suites: main
Components: stable
Architectures: amd64
Signed-By: /usr/share/keyrings/NexusSfan.pgp
EOF

sudo apt-get update
sudo apt-get install xlibre xlibre-archive-keyring
```

If you wish to uninstall XLibre and return to Xorg:
```sh
sudo apt-get update
sudo apt-get remove xlibre xserver-xlibre* nexussfan-archive-keyring
sudo apt-get install xorg
sudo rm -f /etc/apt/sources.list.d/xlibre-debian.sources
```