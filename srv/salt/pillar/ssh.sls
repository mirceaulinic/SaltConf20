proxy:
  proxytype: ssh
  host: {{ opts.id }}
  user: root
  priv: /etc/salt/ssh_key
  priv_passwd: SaltConf20
  ignore_host_keys: true
