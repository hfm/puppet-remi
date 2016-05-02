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
    unless  => "rpm -q gpg-pubkey-$(gpg --throw-keyids ${path} | grep pub | cut -c 12-19 | tr '[A-Z]' '[a-z]')",
  }

}
