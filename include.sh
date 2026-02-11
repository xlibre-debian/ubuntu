reprepro -C stable includedeb main ~/XLibreDebianRemote/ubuntu-packages-amd64/*.deb
reprepro -C stable includedeb main ~/XLibreDebianRemote/ubuntu-packages-arm64/*.deb
reprepro export
reprepro deleteunreferenced
reprepro export
