
# output "student_ssh" {
#   value       = tls_private_key.student_sshkey[*].public_key_openssh
#   description = "Klucz studencki do logowania na hosty laboratorium"
# }

# output "student_pwd" {
#   value       = random_password.student_password[*].result
#   description = "Hasło studenta do logowania na bastion"
# }

# output "student_count" {
#   value = var.student_count
# }

output "result" {
  value = local.student
}

output "short" {
  value = format("Login: %s / pass: %s", local.student.login, local.student.pass)
}

output "cloudinit-feed" {
  value = {
    user    = local.student.login
    pass    = local.student.pass
    ssh_prv = tls_private_key.student_sshkey.private_key_pem
    ssh_pub = tls_private_key.student_sshkey.public_key_openssh
  }
}
