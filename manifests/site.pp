node default {
  file {'/root/README':
    ensure  => file,
    content => 'das ist mein readme, test',
    owner   => 'root',
  }
}
#spezifische node config. sobald dies für ein node existiert, wird default oben für diesen node nicht mehr angewendet!!
node 'master.puppet.vm' {
  include role::master_server
}
