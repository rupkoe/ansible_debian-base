# Role "base"

Base setup for a Debian server. Basic safety included, so it can be put on the internet right away.  

## Variables

See `defaults/main.yml` for variables and their defaults.

## Email

For outbound emails to work, variables have to be set differently, according to weather the server's hostname / fqdn is excepted by outbound mail servers as sender fqdn or not:

**If it is accepted:**

- `base__hostname: <hostname>`
- `base__host_fqdn: <hostname.domain>`
- *do not set* `base__external_fqdn`


**If it's not accepted, but there is another "external" fqdn which can be used instead:**

- `base__hostname: <internal_hostname>`
- `base__external_fqdn: <fqdn_accepted_by_outbound_servers>`
- may or may not be set: `base__host_fqdn`
