# Check dependencies are correctly installed
salt-sproxy -V

# List the devices managed through Proxy Minions
salt '*' --preview-target

# Check that the list of devices builds properly
salt-sproxy '*' --preview-target

# Check the roles, as specified in the static Grains, without connecting
salt-sproxy '*' grains.get role --no-connect

# Role-based selection
salt-sproxy -G role:leaf --preview-target

# Start executing some simple commands
salt-sproxy 'vmx*' route.show 0.0.0.0/0

salt-sproxy -G role:spine net.arp

# Loading a templated config change
salt-sproxy \* net.load_template /srv/salt/templates/hostname.jinja test=True

# Reference the template using the salt:// URI format
salt-sproxy \* net.load_template salt://templates/hostname.jinja test=True

# Configuration change through the State subsystem
salt-sproxy \* state.apply hostname

# Execute arbitrary RPC call
salt-sproxy -G role:router napalm.junos_rpc 'get-lldp-neighbors-information'

# Table display
salt-sproxy -G role:router napalm.junos_rpc get-lldp-neighbors-information --out=table

# Execute on the Arista switches
salt-sproxy -G os:eos napalm.pyeapi_run_commands 'show lldp neighbors'

# Execute a custom Salt function
salt-sproxy -L vmx1,eos-leaf1,eos-spine1 example.version

# Start the Master in background
salt-master -d
# State the Salt REST API in background
salt-sapi -d

# Watch the event bus (in a different terminal)
salt-run state.event pretty=True

# Check the Salt API is running fine:
curl localhost:8080/

# Execute a request through the Salt API
curl -sS localhost:8080/run -H 'Accept: application/x-yaml' \
 -d eauth='auto' \
 -d username='test-usr' \
 -d password='pass' \
 -d client='sproxy' \
 -d tgt='vmx1' \
 -d fun='test.ping'

# Execute a request through the Salt API
curl -sS localhost:8080/run -H 'Accept: application/x-yaml' \
 -d eauth='auto' \
 -d username='test-usr' \
 -d password='pass' \
 -d client='sproxy' \
 -d tgt='*' \
 -d fun='net.arp'
