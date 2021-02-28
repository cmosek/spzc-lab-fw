variable "esxi_hostname" { default = "esxi" }
variable "esxi_hostport" { default = "22" }
variable "esxi_hostssl" { default = "443" }
variable "esxi_username" { default = "root" }
variable "esxi_password" {} # Unspecified will prompt

variable "esxi_diskstore" {
  default     = ""
  description = "Magazyn dyskowy laboratorium"
}

variable "vm_bastion_guest_name" {
  default = "bastion"
}
variable "bastion_ext_ip" {
  description = "Zewnętrzne IP bastiona służące do logowania"
}
variable "ext_uplink_nic" {
  description = "Karta sieciowa w dostępna z zewnątrz"
}


variable "packages_fw" {
  default = ["ssh", "iptables"]
}
