
# Installs a link to the binary into the installed user

PKG="$1"
 
mkdir -p ~/bin
rm -f ~/bin/goss
ln -s -t ~/bin "$PKG/pkg/usr/local/bin/goss"


