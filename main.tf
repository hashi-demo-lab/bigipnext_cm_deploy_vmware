resource "bigipnext_cm_deploy_vmware" "vmware" {
  vsphere_provider = {
    provider_name      = "vcsa-98975.fe9dbbb3.asia-southeast1.gve.goog"
    content_library    = "f5"
    cluster_name       = "cluster"
    datacenter_name    = "Datacenter"
    datastore_name     = "vsanDatastore"
    resource_pool_name = "f5resources"
    vm_template_name   = "f5-20.2.1-2-template"
  }
  instance = {
    instance_hostname     = "f5ve-example.hashicorp.local"
    mgmt_address          = "172.21.15.201"
    mgmt_prefix           = 22
    mgmt_gateway          = "172.21.12.1"
    mgmt_network_name     = "seg-general"
    mgmt_user             = "admintest"
    mgmt_password         = "Hashicorp123!"
    external_network_name = "seg-general"
  }
  ntp_servers = ["0.us.pool.ntp.org"]
  dns_servers = ["8.8.8.8"]
  timeout     = 1200
}