puppet-bdii
===========

Synopsis
--------

Manage the BDII grid information system.

Documentation for BDII is available [here](http://gridinfo.web.cern.ch)

To use a bdii resource, it should be enough to simply:

include bdii

To manage site bdii, it is expected that hiera should be used to configure
the sitebdii parameters, however it is in theory possible to modify the 
defaults in params.pp if this is more convenient.

## Class Parameters to bdii
 * `manage_firewall` Defaults to true.
 * `log_level` defaults to  `DEBUG`
 * `port` defaults to `2170`
 * `user`  defaults `ldap`
 * `slapdconf` defaults to `/etc/bdii/bdii/bdii-slapd.conf`
 * `deletedelay` defaults to `0` (no delay)
 * `$selinux` defaults to `true`


## Deprecations
Previously all configurations could be specified by setting e.g.
`bdii::params::site_name` within hiera. These are all now class parameters
so this one should be `bdii::site_name` for instance.
Eventually support for settings via the `params.pp` will be removed.


