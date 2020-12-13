node default {
  file {'/root/README':
    ensure  => file,
    content => 'das ist mein readme, test',
    owner   => 'root',
  }
}
