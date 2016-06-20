server1:
  host.present:
    - ip: {{ grains.ip_interfaces.eth0[0] }}
    - names:
      - {{ grains.host }}

sync_custom_modules:
  module.run:
    - name: saltutil.sync_grains
    - refresh: True
