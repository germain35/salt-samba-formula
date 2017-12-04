{% from "samba/map.jinja" import samba with context %}

samba_server_package:
  pkg.installed:
    - name: {{ samba.server_pkg }}
