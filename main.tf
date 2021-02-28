resource "esxi_resource_pool" "test_vms" {
  resource_pool_name = "rp_test_vms"
}

resource "esxi_resource_pool" "net_vms" {
  resource_pool_name = "rp_net_vms"
}

resource "esxi_guest" "vm_bastion" {
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
    mac_address = "00:50:56:FF:21:37"
  }

  ### CLOUD-INIT
  guestinfo = {
    "metadata"          = base64gzip(file("cloud-inits/${vm_bastion.guest_name}/metadata.yaml"))
    "metadata.encoding" = "gzip+base64"
    "userdata"          = base64gzip(file("cloud-inits/${vm_bastion.guest_name}/userdata.yaml"))
    "userdata.encoding" = "gzip+base64"
  }

}
