{% from "samba/map.jinja" import samba with context %}

include:
  {%- if samba.client %}
  - samba.client
  {%- endif %}
  {%- if samba.server %}
  - samba.server
  - samba.config
  - samba.users
  - samba.service
  {%- endif %}
