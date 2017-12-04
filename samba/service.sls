{% from "samba/map.jinja" import samba with context %}

include:
  - samba.server

samba_service:
  service.running:
    - name: {{ samba.service }}
    - enable: True
    - require:
      - sls: samba.server

