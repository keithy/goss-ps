DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${DIR}/include.sh

AIM="/etc/systemd"
SECS="${1:-5}"

while true; do
  find "$AIM" -type f -newermt "$SECS seconds ago" -printf "systemd units reloading\n" -exec sudo systemctl daemon-reload \;
  sleep $SECS
done

