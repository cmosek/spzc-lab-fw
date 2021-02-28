locals {
  student = {
    login         = format("stud%02d", var.seat_index)
    nick          = random_pet.student_username.id
    pass          = random_password.student_password.result
    seq           = var.seat_index
    vlan_mgmt_vm  = format("1%02d5", var.seat_index)
    vlan_mgmt_fw  = format("1%02d6", var.seat_index)
    vlan_mgmt_ips = format("1%02d7", var.seat_index)
    vlan_mgmt_srv = format("1%02d8", var.seat_index)
    vlan_lab      = format("2%02d0", var.seat_index)
    vlan_srv      = format("3%02d0", var.seat_index)
    # ip    = var.IP_mgmt
  }

  # studenci = {
  #   for x in range(var.student_count) : format("stud%02d", x) => local.student
  # }
}
