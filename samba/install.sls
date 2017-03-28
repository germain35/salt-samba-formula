{% from "samba/map.jinja" import samba with context %}

{%- if salt['pillar.get']('samba:server', True) %}
samba_server_package:
  pkg.installed:
    - name: {{ samba.server }}
{%- endif %}


{%- if salt['pillar.get']('samba:client', True) %}
samba_client_package:
  pkg.installed:
    - name: {{ samba.client }}
{%- endif %}