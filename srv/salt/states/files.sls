/tmp/download:
  file.managed:
    - source: https://raw.githubusercontent.com/mirceaulinic/SaltConf20/main/srv/salt/templates/hostname.jinja
    - skip_verify: true


/etc/hostname:
  file.managed:
    - source: salt://templates/hostname.jinja
    - template: jinja
