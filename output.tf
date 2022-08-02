output "ha-proxy" {
    value = linode_instance.HA-Proxy[*].ipv4
}

output "kube-master" {
    value = linode_instance.kube-master[*].ipv4
}

output "kube-worker" {
    value = linode_instance.kube-worker[*].ipv4
}
