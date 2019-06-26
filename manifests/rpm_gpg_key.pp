# Class: remi::rpm_gpg_key
# ===========================
#
# Import the RPM GPG key for the Remi.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `ensure`
# Whether the RPM-GPG-KEY-remi file should exist.
#
# * `path`
# The path to the RPM-GPG-KEY-remi file to manage. Must be an absolute path.
#
class remi::rpm_gpg_key (
  $ensure = present,
  $path   = '/etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
){

  file { $path:
    ensure => $ensure,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/remi/RPM-GPG-KEY-remi',
    before => Exec['import-remi'],
  }

  exec { 'import-remi':
    command => "rpm --import ${path}",
    path    => ['/bin', '/usr/bin'],
    unless  => "rpm -q gpg-pubkey-$(echo $(gpg -q --throw-keyids --keyid-format short < ${path}) | grep pub | cut -f2 -d/ | cut -f1 -d' ' | tr '[A-Z]' '[a-z]')",
  }

}
