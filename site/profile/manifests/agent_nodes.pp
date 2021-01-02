# Class: profile::agent_nodes
#
class profile::agent_nodes {
  #include dockeragent
  #dockeragent::node {'web.puppet.vm':}
  #dockeragent::node {'db.puppet.vm':}

  include dockeragent

dockeragent::node { "agent1.${::fqdn}":
  ports => ['10080:80'],
}
dockeragent::node { "agent2.${::fqdn}":
  ports => ['20080:80'],
}

}
