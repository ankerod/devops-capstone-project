ui = true
api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
disable_mlock = true

storage "raft" {
  path = "vault/data"
  node_id = "raft_node_1"
}

listener "tcp" {
  address       = "0.0.0.0:8200"
  # tls_cert_file = "/path/to/full-chain.pem"
  # tls_key_file  = "/path/to/private-key.pem"
  tls_disable = 1
}
