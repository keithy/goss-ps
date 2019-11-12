DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${DIR}/include.sh

$LOUD && echo portablectl attach ${P_PATH} --profile=${PORTABLE_PREFERRED_PROFILE} --copy=symlink
portablectl attach ${P_PATH} --profile=${PORTABLE_PREFERRED_PROFILE} --copy=symlink



