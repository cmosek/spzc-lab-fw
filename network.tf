resource "esxi_vswitch" "vs_mgmt" {
  name = "vs_mgmt"
}

resource "esxi_portgroup" "pg_mgmt" {
  name    = "pg_mgmt"
  vswitch = "vs_mgmt"
  vlan    = "4095"
}

#resource "esxi_vswitch" "vs_lab" {
#  name = "vs_lab"
#}

resource "esxi_vswitch" "vs_ext" {
  name   = "vs_ext"
  uplink = [var.ext_uplink_nic]
}
