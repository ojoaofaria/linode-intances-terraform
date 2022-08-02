terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = "PUT_YOUR_LINODE_TOKEN_HERE"
}

resource "linode_instance" "kube-master" {
        image = "linode/ubuntu22.04"
        count = var.master_count
        label = "master-${count.index}"
        group = "K8s"
        region = "us-southeast"
        type = "g6-standard-2"
        #authorized_keys = [ "YOUR_PUBLIC_SSH_KEY" ]
        root_pass = "YOUR_ROOT_PASS"
}

resource "linode_instance" "kube-worker" {
        image = "linode/ubuntu22.04"
	count = var.worker_count
        label = "worker-${count.index}"
        group = "K8s"
        region = "us-southeast"
        type = "g6-standard-1"
        #authorized_keys = [ "YOUR_PUBLIC_SSH_KEY" ]
        root_pass = "YOUR_ROOT_PASS"
     
  
}

resource "linode_instance" "HA-Proxy" {
        image = "linode/ubuntu22.04"
        count = 1
        label = "ha-proxy"
        group = "K8s"
        region = "us-southeast"
        type = "g6-nanode-1 "
        #authorized_keys = [ "YOUR_PUBLIC_SSH_KEY" ]
        root_pass = "YOUR_ROOT_PASS"
       
}
