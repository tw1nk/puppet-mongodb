# Class: mongodb::params
#
# This class defines default parameters used by the main module class mongodb
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to mongodb class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class mongodb::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => ['mongo-10gen-server'],
  }

  $service = $::operatingsystem ? {
    default => 'mongod',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'mongodb',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'mongodb',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/mongod.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/mongodb',
    default                   => '/etc/sysconfig/mongod<',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/mongo.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/var/lib/mongo',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/mongo',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/mongo/mongod.log',
  }

  $port = '271017'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = 'false'
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false

}
