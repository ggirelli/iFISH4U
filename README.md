#iFISH4U

**iFISH4U** is a website offered by [Bienko and Crosetto labs](https://bienkocrosettolabs.org/) for the design of new iFISH probes, and to browse available probe databases.

The website is served using a Python3 Bottle-based web-server implemented in the [iFISH-probe-designer](https://pypi.org/project/ifpd/) package (`ifpd`).

```
ifpd_serve -s ifpd_static_folder -T iFISH4U -H homepage -R iFISH4U/new_routes.py -m email@example.com
```

License
---

```
MIT License
Copyright (c) 2016-2019 Gabriele Girelli
```
