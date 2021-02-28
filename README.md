## Requirements

| Name | Version |
|------|---------|
| esxi | 1.8.1 |

## Providers

| Name | Version |
|------|---------|
| cloudinit | n/a |
| esxi | 1.8.1 |
| random | n/a |
| template | n/a |
| tls | n/a |

## Resources

| Name |
|------|
| [cloudinit_config](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) |
| [esxi_guest](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/guest) |
| [esxi_portgroup](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/portgroup) |
| [esxi_resource_pool](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/resource_pool) |
| [esxi_vswitch](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/vswitch) |
| [random_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) |
| [template_file](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) |
| [tls_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| esxi\_diskstore | Magazyn dyskowy laboratorium | `string` | `""` | no |
| esxi\_hostname | n/a | `any` | n/a | yes |
| esxi\_hostport | n/a | `string` | `"22"` | no |
| esxi\_hostssl | n/a | `string` | `"443"` | no |
| esxi\_password | n/a | `any` | n/a | yes |
| esxi\_username | n/a | `string` | `"root"` | no |
| packages\_fw | Oprogramowanie zainstalowane na hostach FW | `list` | <pre>[<br>  "ssh",<br>  "iptables"<br>]</pre> | no |
| vm\_bastion\_ext\_ip | Zewnętrzne IP bastiona służące do logowania | `any` | n/a | yes |
| vm\_bastion\_guest\_name | n/a | `string` | `"bastion"` | no |
| vs\_ext\_uplink\_nic | Karta sieciowa w dostępna z zewnątrz -- podłączenia bastiona | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| student\_pwd | Hasło studenta do logowania na bastion |
| student\_ssh | Klucz studencki do logowania na hosty laboratorium |
