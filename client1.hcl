log_level = "DEBUG"

data_dir = "/tmp/client1"

name = "client1"

client {
    enabled = true
    servers = ["$LEADER_IP:4647"]
}

ports {
    http = 5656
}

plugin "docker" {
  config {
    gc {
      dangling_containers {
        enabled = false
      }
    }
  }
}
