#default node declaration. falls keien spezifische node declaration existiert, wird puppet diese anwenden
node default {
  file {'/root/README':
    ensure  => file,
    content => 'das ist mein readme, test',
    owner   => 'root',
  }
}
#spezifische node declaration. sobald dies für ein node existiert, wird default oben für diesen node nicht mehr angewendet!!
#
node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
