include chocolatey

class profile::iisserver {
  package { 'puppet-agent':
    ensure => '1.3.5',
    provider => 'chocolatey',
  }

  package { 'SW-MicrosoftTeamExplorer-2013':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-7zip':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-BeyondCompare':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SQLXML':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-IISUrlRewriteModule':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-MicrosoftDotNet':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
    notify => Reboot['after_run'],
  }

  package { 'SW-MicrosoftIdentitySDK':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-Erlang':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-RabbitMQ':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-BusDriver':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-Redis':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-FireFox':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-SMTP4Dev':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
  }

  package { 'SW-MSTestAgent2013':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
    notify => Reboot['after_run'],
  }

  package { 'SW-SQLServerManagementStudio2012':
    ensure => installed,
    provider => 'chocolatey',
    source => '\\\\prod-vm-tools\\BoxStarter',
    notify => Reboot['after_run'],
  }

  reboot { 'after_run':
    apply => finished,
  }
}
