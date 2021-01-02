# Class: profile::agent_nodes
#
class profile::agent_nodes {
  #include dockeragent
  #dockeragent::node {'web.puppet.vm':}
  #dockeragent::node {'db.puppet.vm':}

  include dockeragent

dockeragent::node { "web.puppet.vm.${::fqdn}":
  ports => ['10080:80'],
}
dockeragent::node { "db.puppet.vm.${::fqdn}":
  ports => ['20080:80'],
}

}
