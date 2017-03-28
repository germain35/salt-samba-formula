{% from "samba/map.jinja" import samba with context %}

include:
  - samba.install

samba_service:
  service.running:
    - name: {{ samba.service }}
    - enable: True
    - require:
      - sls: samba.install