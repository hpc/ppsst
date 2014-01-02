ppsst
=====

Prerequisites, Packages, Services, Sanity check tools

This utility is used to install packages and configure services on either a running image or a node image (root filesystem).

Usage
-----
example of a dry run for a running host:
```
/opt/ppsst/bin/build -c /opt/ppsst/etc -r -n
```
example of provisioning a running host:
```
/opt/ppsst/bin/build -c /opt/ppsst/etc -r -v
```

example of a dry run on a root-file-system:
```
/opt/ppsst/bin/build -v -d -n -c /path/to/nodeimage
```
example of provisioning a root-file-system:
```
/opt/ppsst/bin/build -v -c /path/to/nodeimage
```

Configuration Definitions
-------------------------
```
  downgrade (directory)
    rpms go in here that should be automatically downgraded to
  excludepackages (file)
    list of packages to be skipped when calling yum
  installgroups (file)
    list of yum-groups to be installed
  installpackages (file)
    list of packages to be installed
  onservices (file)
    services to be turned on (everything else off by default)
  removegroups (file)
    list of yum-groups to be removed (including dependencies)
  removepackages (file)
    list of packages to be removed (including dependancies)
```

  yum.conf will be read from /etc on a running system and from the configuration directory for a root-file-system.  NB: yum/rpm are called from the runing host so must be compatible with the nodeimage.
