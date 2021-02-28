data "template_file" "userdata_fw" {
  template = file("cloud-inits/fw/userdata.tpl.yaml")
  vars = {
    packages = jsonencode(var.packages_fw)
  }
}
data "template_file" "metadata_fw" {
  template = file("cloud-inits/fw/metadata.tpl.yaml")
  vars = {
    vm_name    = local.vm_name
    vm_lab_ip  = local.vm_lab_ip
    vm_srv_ip  = local.vm_srv_ip
    vm_mgmt_ip = local.vm_mgmt_ip
  }
}

# Render a multi-part cloud-init config making use of the part
# above, and other source files
data "template_cloudinit_config" "config_fw" {
  gzip          = true
  base64_encode = true

  # Main cloud-config configuration file.
  part {
    filename     = "init.cfg"
    content_type = "text/cloud-config"
    content      = data.template_file.userdata_fw.rendered
  }

  #   part {
  #     content_type = "text/x-shellscript"
  #     content      = "baz"
  #   }
}
