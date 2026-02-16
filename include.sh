reprepro -C stable includedeb main ~/XLibreDebianRemote/ubuntu-packages-amd64/*.deb
reprepro -C stable includedeb main ~/XLibreDebianRemote/ubuntu-packages-arm64/*.deb
reprepro -C stable includedeb main ~/Debian/Projects/xlibre-keyring.deb
reprepro -C stable includedeb main ~/Debian/Projects/nexussfan-keyring.deb
reprepro export
reprepro deleteunreferenced
reprepro export
