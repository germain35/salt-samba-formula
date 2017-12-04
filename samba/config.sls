{% from "samba/map.jinja" import samba with context %}

include:
  - samba

samba_config:
  file.managed:
    - name: {{ samba.config }}
    - source: {{ samba.config_src }}
    - template: jinja
    - require:
      - pkg: samba_server_package
    - watch_in:
      - service: samba_service
