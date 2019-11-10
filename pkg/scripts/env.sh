DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#Derived from Directory Name
#
# P_ Pkg/Portable
#
P_PATH=$(dirname $(dirname ${DIR}))
P_NAME_AND_VERSION=${PORTABLE_PATH##*/}
P_NAME=${PORTABLE_NAME_AND_VERSION%_*}
P_VERSION=${PORTABLE_NAME_AND_VERSION##*_}}

P_PREFERRED_PROFILE=trusted
P_ENABLE=goss-serve.service
P_START=goss-serve.service



