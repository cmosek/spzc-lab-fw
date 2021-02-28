resource "random_password" "student_password" {
  length           = 8
  special          = false
  override_special = "_%@"
}
resource "tls_private_key" "student_sshkey" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

output "student_ssh" {
  value       = tls_private_key.student_sshkey.public_key_openssh
  description = "Klucz studencki do logowania na hosty laboratorium"
}

output "student_pwd" {
  value       = random_password.student_password.result
  description = "Hasło studenta do logowania na bastion"
}
