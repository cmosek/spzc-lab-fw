resource "random_password" "student_password" {
  length           = 8
  special          = false
  override_special = "_%@"
}

resource "tls_private_key" "student_sshkey" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

resource "random_pet" "student_username" {
  length = 2
  prefix = "stud"
}
