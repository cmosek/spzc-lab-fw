terraform {
  required_providers {
    esxi = {
      source  = "josenk/esxi"
      version = "1.8.1"
    }
  }
}

provider "esxi" {
  esxi_hostname = "esxi"
  esxi_hostport = "22"
  esxi_hostssl  = "443"
  esxi_username = "root"
  esxi_password = ""
}
