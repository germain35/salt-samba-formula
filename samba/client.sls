{% from "samba/map.jinja" import samba with context %}

samba_client_package:
  pkg.installed:
    - name: {{ samba.client_pkg }}
