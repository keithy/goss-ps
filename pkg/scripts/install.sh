DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${DIR}/env.sh

mkdir -p ~/bin
ln -s -t /bin "$P_PATH/pkg/usr/local/bin/goss"



