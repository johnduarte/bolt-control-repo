#
# @summary base classes included on all *nix nodes
#
class profile::unixbase {
  $timezone = lookup(profile::unixbase::timezone, String)

  class { '::timezone':
    timezone => $timezone,
  }
}
