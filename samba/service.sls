{% from "samba/map.jinja" import samba with context %}

include:
  - samba.install

samba_service:
  service.running:
    - name: {{ samba.service }}
    - enable: True
    - require:
      - sls: samba.install

# The following states are inert by default and can be used by other states to
# trigger a restart or reload as needed.
samba_service_reload:
  module.wait:
    - name: service.reload
    - m_name: {{ samba.service }}

samba_service_restart:
  module.wait:
    - name: service.restart
    - m_name: {{ samba.service }}