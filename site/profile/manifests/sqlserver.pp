# the following line bootstraps the chocolatey module
include chocolatey

class profile::sqlserver {
  package { 'puppet-agent':
    ensure => '1.3.5',
    provider => 'chocolatey',
  }

  #package { 'notepadplusplus':
  #  ensure => installed,
  #  provider => 'chocolatey',
  #}

  package { 'SW-NotepadPlusPlus': 
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-MongoDB':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLServer2012':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLServer2012Update7':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLServer2012NativeClient':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLServer2012CommandLineUtilities':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLServerMailSetup':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLServer2012PostSQLScripts':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  reboot { 'after': 
    subscribe => Package['SW-SQLServer2012PostSQLScripts'],
  }
}
