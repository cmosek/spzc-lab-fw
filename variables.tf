variable "esxi_hostname" {}
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
variable "vm_bastion_ext_ip" {
  description = "Zewnętrzne IP bastiona służące do logowania"
}
variable "vs_ext_uplink_nic" {
  description = "Karta sieciowa w dostępna z zewnątrz -- podłączenia bastiona"
}


variable "packages_fw" {
  default     = ["ssh", "iptables"]
  description = "Oprogramowanie zainstalowane na hostach FW"
}


variable "seat_count" {
  description = "Ilość stanowisk laboratorium"
}
