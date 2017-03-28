{% from "samba/map.jinja" import samba as samba_map with context %}

include:
  - samba.install
  - samba.config
  - samba.users
  - samba.service
