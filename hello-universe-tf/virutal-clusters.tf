resource "spectrocloud_virtual_cluster" "cluster-1" {
  name              = var.scenario-one-cluster-name
  cluster_group_uid = data.spectrocloud_cluster_group.beehive.id

  resources {
    max_cpu           = 4
    max_mem_in_mb     = 4096
    min_cpu           = 0
    min_mem_in_mb     = 0
    max_storage_in_gb = "2"
    min_storage_in_gb = "0"
  }

  tags = var.tags

  timeouts {
    create = "15m"
    delete = "15m"
  }
}