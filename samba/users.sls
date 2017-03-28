
include:
  - samba.install

{% for login, user in salt['pillar.get']('samba:users', {}).items() %}
samba_user_{{ login }}:
  user.present:
    - name: {{ login }}
    - password: {{ user.password }}
    - enforce_password: False

samba_smbpasswd_{{ login }}:
  cmd.run:
    - name: '(echo {{ user.password }}; echo {{ user.password }}) | smbpasswd -as {{ login }}'
{% endfor %}
