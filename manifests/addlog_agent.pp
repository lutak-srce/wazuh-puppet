# Wazuh App Copyright (C) 2021 Wazuh Inc. (License GPLv2)
#Define a log-file to add to ossec
define wazuh::addlog_agent(
  $logfile      = undef,
  $logtype      = 'syslog',
  $logcommand   = undef,
  $commandalias = undef,
  $frequency    = undef,
  $target_arg   = 'agent_ossec.conf',
) {
  require wazuh::params_agent

  concat::fragment { "ossec.conf_localfile-${logfile}":
    target  => $target_arg,
    content => template('wazuh/fragments/_localfile_generation.erb'),
    order   => 21,
  }

}
