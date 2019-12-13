# Class: remi
# ===========================
#
# Configure the remi repository and import the GPG keys.
#
# Parameters
# ----------
#
# * `ensure`
# Whether Remi's repositories and the RPM-GPG-KEY-remi file should exist.
#
# * `path`
# The path to the RPM-GPG-KEY-remi file to manage. Must be an absolute path.
#
# Examples
# --------
#
# @example
#    class { 'remi':
#      remi_safe_enabled  => 1,
#      remi_php71_enabled => 1,
#    }
#
class remi (
  $ensure                                = present,
  $path                                  = '/etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
  $use_epel                              = true,
  $proxy                                 = absent,
  $proxy_password                        = absent,
  $proxy_username                        = absent,

  $remi_baseurl                          = absent,
  $remi_mirrorlist                       = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/remi/mirror",
  $remi_enabled                          = 0,
  $remi_includepkgs                      = undef,
  $remi_exclude                          = undef,

  $remi_php54_baseurl                    = absent,
  $remi_php54_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php54/mirror",
  $remi_php54_enabled                    = 0,
  $remi_php54_includepkgs                = undef,
  $remi_php54_exclude                    = undef,

  $remi_php55_baseurl                    = absent,
  $remi_php55_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php55/mirror",
  $remi_php55_enabled                    = 0,
  $remi_php55_includepkgs                = undef,
  $remi_php55_exclude                    = undef,

  $remi_php56_baseurl                    = absent,
  $remi_php56_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php56/mirror",
  $remi_php56_enabled                    = 0,
  $remi_php56_includepkgs                = undef,
  $remi_php56_exclude                    = undef,

  $remi_test_baseurl                     = absent,
  $remi_test_mirrorlist                  = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/test/mirror",
  $remi_test_enabled                     = 0,
  $remi_test_includepkgs                 = undef,
  $remi_test_exclude                     = undef,

  $remi_debuginfo_baseurl                = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-remi/\$basearch/",
  $remi_debuginfo_mirrorlist             = absent,
  $remi_debuginfo_enabled                = 0,
  $remi_debuginfo_includepkgs            = undef,
  $remi_debuginfo_exclude                = undef,

  $remi_php55_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php55/\$basearch/",
  $remi_php55_debuginfo_mirrorlist       = absent,
  $remi_php55_debuginfo_enabled          = 0,
  $remi_php55_debuginfo_includepkgs      = undef,
  $remi_php55_debuginfo_exclude          = undef,

  $remi_php56_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php56/\$basearch/",
  $remi_php56_debuginfo_mirrorlist       = absent,
  $remi_php56_debuginfo_enabled          = 0,
  $remi_php56_debuginfo_includepkgs      = undef,
  $remi_php56_debuginfo_exclude          = undef,

  $remi_test_debuginfo_baseurl           = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-test/\$basearch/",
  $remi_test_debuginfo_mirrorlist        = absent,
  $remi_test_debuginfo_enabled           = 0,
  $remi_test_debuginfo_includepkgs       = undef,
  $remi_test_debuginfo_exclude           = undef,

  $remi_safe_baseurl                    = absent,
  $remi_safe_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/safe/mirror",
  $remi_safe_enabled                    = 0,
  $remi_safe_includepkgs                = undef,
  $remi_safe_exclude                    = undef,

  $remi_php70_baseurl                    = absent,
  $remi_php70_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php70/mirror",
  $remi_php70_enabled                    = 0,
  $remi_php70_includepkgs                = undef,
  $remi_php70_exclude                    = undef,

  $remi_php70_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php70/\$basearch/",
  $remi_php70_debuginfo_mirrorlist       = absent,
  $remi_php70_debuginfo_enabled          = 0,
  $remi_php70_debuginfo_includepkgs      = undef,
  $remi_php70_debuginfo_exclude          = undef,

  $remi_php70_test_baseurl               = absent,
  $remi_php70_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/test70/mirror",
  $remi_php70_test_enabled               = 0,
  $remi_php70_test_includepkgs           = undef,
  $remi_php70_test_exclude               = undef,

  $remi_php70_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-test70/\$basearch/",
  $remi_php70_test_debuginfo_mirrorlist  = absent,
  $remi_php70_test_debuginfo_enabled     = 0,
  $remi_php70_test_debuginfo_includepkgs = undef,
  $remi_php70_test_debuginfo_exclude     = undef,

  $remi_php71_baseurl                    = absent,
  $remi_php71_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php71/mirror",
  $remi_php71_enabled                    = 0,
  $remi_php71_includepkgs                = undef,
  $remi_php71_exclude                    = undef,

  $remi_php71_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php71/\$basearch/",
  $remi_php71_debuginfo_mirrorlist       = absent,
  $remi_php71_debuginfo_enabled          = 0,
  $remi_php71_debuginfo_includepkgs      = undef,
  $remi_php71_debuginfo_exclude          = undef,

  $remi_php71_test_baseurl               = absent,
  $remi_php71_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/test71/mirror",
  $remi_php71_test_enabled               = 0,
  $remi_php71_test_includepkgs           = undef,
  $remi_php71_test_exclude               = undef,

  $remi_php71_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-test71/\$basearch/",
  $remi_php71_test_debuginfo_mirrorlist  = absent,
  $remi_php71_test_debuginfo_enabled     = 0,
  $remi_php71_test_debuginfo_includepkgs = undef,
  $remi_php71_test_debuginfo_exclude     = undef,

  $remi_php72_baseurl                    = absent,
  $remi_php72_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php72/mirror",
  $remi_php72_enabled                    = 0,
  $remi_php72_includepkgs                = undef,
  $remi_php72_exclude                    = undef,

  $remi_php72_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php72/\$basearch/",
  $remi_php72_debuginfo_mirrorlist       = absent,
  $remi_php72_debuginfo_enabled          = 0,
  $remi_php72_debuginfo_includepkgs      = undef,
  $remi_php72_debuginfo_exclude          = undef,

  $remi_php72_test_baseurl               = absent,
  $remi_php72_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/test72/mirror",
  $remi_php72_test_enabled               = 0,
  $remi_php72_test_includepkgs           = undef,
  $remi_php72_test_exclude               = undef,

  $remi_php72_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-test72/\$basearch/",
  $remi_php72_test_debuginfo_mirrorlist  = absent,
  $remi_php72_test_debuginfo_enabled     = 0,
  $remi_php72_test_debuginfo_includepkgs = undef,
  $remi_php72_test_debuginfo_exclude     = undef,

  $remi_php73_baseurl                    = absent,
  $remi_php73_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php73/mirror",
  $remi_php73_enabled                    = 0,
  $remi_php73_includepkgs                = undef,
  $remi_php73_exclude                    = undef,

  $remi_php73_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php73/\$basearch/",
  $remi_php73_debuginfo_mirrorlist       = absent,
  $remi_php73_debuginfo_enabled          = 0,
  $remi_php73_debuginfo_includepkgs      = undef,
  $remi_php73_debuginfo_exclude          = undef,

  $remi_php73_test_baseurl               = absent,
  $remi_php73_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/test73/mirror",
  $remi_php73_test_enabled               = 0,
  $remi_php73_test_includepkgs           = undef,
  $remi_php73_test_exclude               = undef,

  $remi_php73_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-test73/\$basearch/",
  $remi_php73_test_debuginfo_mirrorlist  = absent,
  $remi_php73_test_debuginfo_enabled     = 0,
  $remi_php73_test_debuginfo_includepkgs = undef,
  $remi_php73_test_debuginfo_exclude     = undef,

  $remi_php74_baseurl                    = absent,
  $remi_php74_mirrorlist                 = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/php74/mirror",
  $remi_php74_enabled                    = 0,
  $remi_php74_includepkgs                = undef,
  $remi_php74_exclude                    = undef,

  $remi_php74_debuginfo_baseurl          = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-php74/\$basearch/",
  $remi_php74_debuginfo_mirrorlist       = absent,
  $remi_php74_debuginfo_enabled          = 0,
  $remi_php74_debuginfo_includepkgs      = undef,
  $remi_php74_debuginfo_exclude          = undef,

  $remi_php74_test_baseurl               = absent,
  $remi_php74_test_mirrorlist            = "http://cdn.remirepo.net/enterprise/${::operatingsystemmajrelease}/test74/mirror",
  $remi_php74_test_enabled               = 0,
  $remi_php74_test_includepkgs           = undef,
  $remi_php74_test_exclude               = undef,

  $remi_php74_test_debuginfo_baseurl     = "http://rpms.remirepo.net/enterprise/${::operatingsystemmajrelease}/debug-test74/\$basearch/",
  $remi_php74_test_debuginfo_mirrorlist  = absent,
  $remi_php74_test_debuginfo_enabled     = 0,
  $remi_php74_test_debuginfo_includepkgs = undef,
  $remi_php74_test_debuginfo_exclude     = undef,
){

  if $use_epel {
    require epel
  }

  if ($::osfamily == 'RedHat' and $::operatingsystem !~ /Fedora|Amazon/) {
    class { 'remi::rpm_gpg_key':
      ensure => $ensure,
      path   => $path,
    }

    yumrepo {
      default:
        gpgcheck       => 1,
        gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
        require        => Class['remi::rpm_gpg_key'],
        proxy          => $proxy,
        proxy_password => $proxy_password,
        proxy_username => $proxy_username;

      'remi':
        descr       => "Remi's RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_baseurl,
        mirrorlist  => $remi_mirrorlist,
        enabled     => $remi_enabled,
        includepkgs => $remi_includepkgs,
        exclude     => $remi_exclude;

      'remi-php54':
        descr       => "Remi's PHP 5.4 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php54_baseurl,
        mirrorlist  => $remi_php54_mirrorlist,
        enabled     => $remi_php54_enabled,
        includepkgs => $remi_php54_includepkgs,
        exclude     => $remi_php54_exclude;

      'remi-php55':
        descr       => "Remi's PHP 5.5 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php55_baseurl,
        mirrorlist  => $remi_php55_mirrorlist,
        enabled     => $remi_php55_enabled,
        includepkgs => $remi_php55_includepkgs,
        exclude     => $remi_php55_exclude;

      'remi-php56':
        descr       => "Remi's PHP 5.6 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php56_baseurl,
        mirrorlist  => $remi_php56_mirrorlist,
        enabled     => $remi_php56_enabled,
        includepkgs => $remi_php56_includepkgs,
        exclude     => $remi_php56_exclude;

      'remi-test':
        descr       => "Remi's test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_test_baseurl,
        mirrorlist  => $remi_test_mirrorlist,
        enabled     => $remi_test_enabled,
        includepkgs => $remi_test_includepkgs,
        exclude     => $remi_test_exclude;

      'remi-debuginfo':
        descr       => "Remi's RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_debuginfo_baseurl,
        mirrorlist  => $remi_debuginfo_mirrorlist,
        enabled     => $remi_debuginfo_enabled,
        includepkgs => $remi_debuginfo_includepkgs,
        exclude     => $remi_debuginfo_exclude;

      'remi-php55-debuginfo':
        descr       => "Remi's PHP 5.5 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php55_debuginfo_baseurl,
        mirrorlist  => $remi_php55_debuginfo_mirrorlist,
        enabled     => $remi_php55_debuginfo_enabled,
        includepkgs => $remi_php55_debuginfo_includepkgs,
        exclude     => $remi_php55_debuginfo_exclude;

      'remi-php56-debuginfo':
        descr       => "Remi's PHP 5.6 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php56_debuginfo_baseurl,
        mirrorlist  => $remi_php56_debuginfo_mirrorlist,
        enabled     => $remi_php56_debuginfo_enabled,
        includepkgs => $remi_php56_debuginfo_includepkgs,
        exclude     => $remi_php56_debuginfo_exclude;

      'remi-test-debuginfo':
        descr       => "Remi's test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_test_debuginfo_baseurl,
        mirrorlist  => $remi_test_debuginfo_mirrorlist,
        enabled     => $remi_test_debuginfo_enabled,
        includepkgs => $remi_test_debuginfo_includepkgs,
        exclude     => $remi_test_debuginfo_exclude;

      'remi-safe':
        descr       => "Safe Remi's test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_safe_baseurl,
        mirrorlist  => $remi_safe_mirrorlist,
        enabled     => $remi_safe_enabled,
        includepkgs => $remi_safe_includepkgs,
        exclude     => $remi_safe_exclude;

      'remi-php70':
        descr       => "Remi's PHP 7.0 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php70_baseurl,
        mirrorlist  => $remi_php70_mirrorlist,
        enabled     => $remi_php70_enabled,
        includepkgs => $remi_php70_includepkgs,
        exclude     => $remi_php70_exclude;

      'remi-php70-debuginfo':
        descr       => "Remi's PHP 7.0 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php70_debuginfo_baseurl,
        mirrorlist  => $remi_php70_debuginfo_mirrorlist,
        enabled     => $remi_php70_debuginfo_enabled,
        includepkgs => $remi_php70_debuginfo_includepkgs,
        exclude     => $remi_php70_debuginfo_exclude;

      'remi-php70-test':
        descr       => "Remi's PHP 7.0 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php70_test_baseurl,
        mirrorlist  => $remi_php70_test_mirrorlist,
        enabled     => $remi_php70_test_enabled,
        includepkgs => $remi_php70_test_includepkgs,
        exclude     => $remi_php70_test_exclude;

      'remi-php70-test-debuginfo':
        descr       => "Remi's PHP 7.0 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php70_test_debuginfo_baseurl,
        mirrorlist  => $remi_php70_test_debuginfo_mirrorlist,
        enabled     => $remi_php70_test_debuginfo_enabled,
        includepkgs => $remi_php70_test_debuginfo_includepkgs,
        exclude     => $remi_php70_test_debuginfo_exclude;

      'remi-php71':
        descr       => "Remi's PHP 7.1 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php71_baseurl,
        mirrorlist  => $remi_php71_mirrorlist,
        enabled     => $remi_php71_enabled,
        includepkgs => $remi_php71_includepkgs,
        exclude     => $remi_php71_exclude;

      'remi-php71-debuginfo':
        descr       => "Remi's PHP 7.1 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php71_debuginfo_baseurl,
        mirrorlist  => $remi_php71_debuginfo_mirrorlist,
        enabled     => $remi_php71_debuginfo_enabled,
        includepkgs => $remi_php71_debuginfo_includepkgs,
        exclude     => $remi_php71_debuginfo_exclude;

      'remi-php71-test':
        descr       => "Remi's PHP 7.1 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php71_test_baseurl,
        mirrorlist  => $remi_php71_test_mirrorlist,
        enabled     => $remi_php71_test_enabled,
        includepkgs => $remi_php71_test_includepkgs,
        exclude     => $remi_php71_test_exclude;

      'remi-php71-test-debuginfo':
        descr       => "Remi's PHP 7.1 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php71_test_debuginfo_baseurl,
        mirrorlist  => $remi_php71_test_debuginfo_mirrorlist,
        enabled     => $remi_php71_test_debuginfo_enabled,
        includepkgs => $remi_php71_test_debuginfo_includepkgs,
        exclude     => $remi_php71_test_debuginfo_exclude;

      'remi-php72':
        descr       => "Remi's PHP 7.2 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php72_baseurl,
        mirrorlist  => $remi_php72_mirrorlist,
        enabled     => $remi_php72_enabled,
        includepkgs => $remi_php72_includepkgs,
        exclude     => $remi_php72_exclude;

      'remi-php72-debuginfo':
        descr       => "Remi's PHP 7.2 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php72_debuginfo_baseurl,
        mirrorlist  => $remi_php72_debuginfo_mirrorlist,
        enabled     => $remi_php72_debuginfo_enabled,
        includepkgs => $remi_php72_debuginfo_includepkgs,
        exclude     => $remi_php72_debuginfo_exclude;

      'remi-php72-test':
        descr       => "Remi's PHP 7.2 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php72_test_baseurl,
        mirrorlist  => $remi_php72_test_mirrorlist,
        enabled     => $remi_php72_test_enabled,
        includepkgs => $remi_php72_test_includepkgs,
        exclude     => $remi_php72_test_exclude;

      'remi-php72-test-debuginfo':
        descr       => "Remi's PHP 7.2 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php72_test_debuginfo_baseurl,
        mirrorlist  => $remi_php72_test_debuginfo_mirrorlist,
        enabled     => $remi_php72_test_debuginfo_enabled,
        includepkgs => $remi_php72_test_debuginfo_includepkgs,
        exclude     => $remi_php72_test_debuginfo_exclude;

      'remi-php73':
        descr       => "Remi's PHP 7.3 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php73_baseurl,
        mirrorlist  => $remi_php73_mirrorlist,
        enabled     => $remi_php73_enabled,
        includepkgs => $remi_php73_includepkgs,
        exclude     => $remi_php73_exclude;

      'remi-php73-debuginfo':
        descr       => "Remi's PHP 7.3 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php73_debuginfo_baseurl,
        mirrorlist  => $remi_php73_debuginfo_mirrorlist,
        enabled     => $remi_php73_debuginfo_enabled,
        includepkgs => $remi_php73_debuginfo_includepkgs,
        exclude     => $remi_php73_debuginfo_exclude;

      'remi-php73-test':
        descr       => "Remi's PHP 7.3 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php73_test_baseurl,
        mirrorlist  => $remi_php73_test_mirrorlist,
        enabled     => $remi_php73_test_enabled,
        includepkgs => $remi_php73_test_includepkgs,
        exclude     => $remi_php73_test_exclude;

      'remi-php73-test-debuginfo':
        descr       => "Remi's PHP 7.3 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php73_test_debuginfo_baseurl,
        mirrorlist  => $remi_php73_test_debuginfo_mirrorlist,
        enabled     => $remi_php73_test_debuginfo_enabled,
        includepkgs => $remi_php73_test_debuginfo_includepkgs,
        exclude     => $remi_php73_test_debuginfo_exclude;

      'remi-php74':
        descr       => "Remi's PHP 7.4 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php74_baseurl,
        mirrorlist  => $remi_php74_mirrorlist,
        enabled     => $remi_php74_enabled,
        includepkgs => $remi_php74_includepkgs,
        exclude     => $remi_php74_exclude;

      'remi-php74-debuginfo':
        descr       => "Remi's PHP 7.4 RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php74_debuginfo_baseurl,
        mirrorlist  => $remi_php74_debuginfo_mirrorlist,
        enabled     => $remi_php74_debuginfo_enabled,
        includepkgs => $remi_php74_debuginfo_includepkgs,
        exclude     => $remi_php74_debuginfo_exclude;

      'remi-php74-test':
        descr       => "Remi's PHP 7.4 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
        baseurl     => $remi_php74_test_baseurl,
        mirrorlist  => $remi_php74_test_mirrorlist,
        enabled     => $remi_php74_test_enabled,
        includepkgs => $remi_php74_test_includepkgs,
        exclude     => $remi_php74_test_exclude;

      'remi-php74-test-debuginfo':
        descr       => "Remi's PHP 7.4 test RPM repository for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - debuginfo",
        baseurl     => $remi_php74_test_debuginfo_baseurl,
        mirrorlist  => $remi_php74_test_debuginfo_mirrorlist,
        enabled     => $remi_php74_test_debuginfo_enabled,
        includepkgs => $remi_php74_test_debuginfo_includepkgs,
        exclude     => $remi_php74_test_debuginfo_exclude;
    }
  } else {
    notice("This remi module does not support ${::operatingsystem}.")
  }

}
