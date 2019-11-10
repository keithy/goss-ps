
# Edit and reload

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${DIR}/env.sh

nano ${DIR}/../units/cockpit-bash@.service
systemctl daemon-reload



