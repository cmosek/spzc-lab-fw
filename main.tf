resource "esxi_resource_pool" "test_vms" {
  resource_pool_name = "rp_test_vms"
}

resource "esxi_resource_pool" "net_vms" {
  resource_pool_name = "rp_net_vms"
}

resource "esxi_guest" "vmtest" {
  guest_name = "bastion"
  disk_store = var.esxi_diskstore

  #clone_from_vm      = "Templates/centos7"
  #ovf_source        = "/local_path/centos-7.vmx"
  #ovf_source = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.ova"
  ovf_source = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.ova"

  network_interfaces {
    virtual_network = [
      "vs_ext",
      "vs_mgmt"
    ]
  }

}
