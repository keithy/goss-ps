- https://github.com/aelsabbahy/goss
- https://github.com/SimonBaeumer/goss

# Go Server Spec - deploy as a Systemd Portable Service

see /etc/os-release for systems this is packaged for - check/contribute other branches

This installs as a systemd portable service and prefers a trusted profile.

## Installation

Extract the archive to /var/lib/portables

```
sudo portablectl attach --copy=symlink --profile=trusted goss_v0.1

#On demand
sudo systemctl start goss.socket
nc --recv-only localhost 1111

#On demand - verbose/debug output
sudo systemctl start goss-debug.socket
nc --recv-only localhost 1111

#Server
sudo systemctl start goss-serve.service
curl -LSs localhost:1111/healthz
```

## Configuration from within the goss 'container'

```
sudo systemctl start goss-bash.socket
nc localhost 1112

(goss)> goss add kernel-param kernel.ostype
```

## Working / to-do
goss resources that work in the Portable Services chroot.

```
resource       support  action
========================================
package        yes      add new package (rpm)
file           yes      add new file
addr           yes      add new remote address:port - ex: google.com:80
port           yes      add new listening [protocol]:port - ex: 80 or udp:123
service        NO       add new service
user           yes      add new user
group          yes      add new group
command        yes      add new command
dns            yes      add new dns
process        yes      add new process name
kernel-param   yes      add new kernel-param
mount          yes      add new mount
interface      yes      add new network interface
http           yes      new network http url
```

systemd portable containers are known to need selinux: `setenforce Permissive`
