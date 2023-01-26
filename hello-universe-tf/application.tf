resource "spectrocloud_application" "hello-universe-ui" {
  name                    = "hello-universe-ui"
  application_profile_uid = spectrocloud_application_profile.hello-universe-ui.id

  config {
    cluster_name      = spectrocloud_virtual_cluster.cluster-1.name
    cluster_group_uid = spectrocloud_virtual_cluster.cluster-1.cluster_group_uid
    limits {
      cpu     = 4
      memory  = 4096
      storage = 2
    }
  }
  tags = var.tags
}