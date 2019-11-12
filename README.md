- https://github.com/aelsabbahy/goss
- https://github.com/SimonBaeumer/goss

# Go Server Spec - deploy as a Systemd Portable Service

This edition expects goss to be pre-installed as a binary on the host, with a 'goss' user, as per: https://github.com/keithy/ign-tool/wiki/plug:goss

## Installation

An ignition installer is available: https://github.com/keithy/ign-tool/wiki/plug:install-packages
This package installs as a systemd portable service (a chrooted environment) and preferring a trusted profile.

### Manual install
Extract the archive into /var/lib/portables
`sudo portablectl attach --copy=symlink --profile=trusted goss_v0.3`

### Usage

Services available: `systemctl start <service/socket>`
goss-serve.service - HTTP server - `curl -LSs localhost:1111/healthz`
goss.socket - on demand plain text server - `nc --recv-only localhost 111`
goss-debug.socket - on demand plain text server - `nc --recv-only localhost 1113`
goss-bash.socket - interactive shell inside the portable container - `nc --recv-only localhost 1112`

### Exec into portable container

It is possible exec into the portable container environment (like docker exec).
This is useful for debugging and for using the `goss` interactive mode
```
sudo systemctl start goss-bash.socket
nc localhost 1112

(goss)> goss add kernel-param kernel.ostype
```

## Working / to-do
goss resources that work in the Portable Services chroot.

```
resource       Fedora31 FCOS action
========================================
package        yes      NO   add new package (rpm)
file           yes           add new file
addr           yes           add new remote address:port - ex: google.com:80
port           yes           add new listening [protocol]:port - ex: 80 or udp:123
service        NO            add new service
user           yes           add new user
group          yes           add new group
command        yes           add new command
dns            yes           add new dns
process        yes           add new process name
kernel-param   yes           add new kernel-param
mount          yes           add new mount
interface      yes           add new network interface
http           yes           add new network http url
```

## Issues
systemd portable containers are known to need selinux: `setenforce Permissive`

