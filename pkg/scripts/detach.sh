DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${DIR}/env.sh

echo portablectl detach ${P_PATH}
portablectl detach ${P_PATH}



