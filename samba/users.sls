
{% for login, user in pillar.get('samba:users', {}).items() %}
{{ login }}:
  user.present:
    - fullname: {{ login }}
    - password: {{ user.password }}
    - enforce_password: False

samba_smbpasswd_{{ login }}:
  cmd.run:
    - name: '(echo {{ user.password }}; echo {{ user.password }}) | smbpasswd -as {{ login }}'
{% endfor %}
