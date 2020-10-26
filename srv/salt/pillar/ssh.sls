proxy:
  proxytype: ssh
  host: {{ opts.id }}
  user: root
  passwd: SaltConf20
  ssh_options:
    - 'StrictHostKeyChecking=no'
