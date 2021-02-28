## Requirements

| Name | Version |
|------|---------|
| esxi | 1.8.1 |

## Providers

| Name | Version |
|------|---------|
| cloudinit | n/a |
| esxi | 1.8.1 |
| template | n/a |

## Resources

| Name |
|------|
| [cloudinit_config](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) |
| [esxi_guest](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/guest) |
| [esxi_portgroup](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/portgroup) |
| [esxi_resource_pool](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/resource_pool) |
| [esxi_vswitch](https://registry.terraform.io/providers/josenk/esxi/1.8.1/docs/resources/vswitch) |
| [template_file](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) |

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
| seat\_count | Ilość stanowisk laboratorium | `any` | n/a | yes |
| vm\_bastion\_ext\_ip | Zewnętrzne IP bastiona służące do logowania | `any` | n/a | yes |
| vm\_bastion\_guest\_name | n/a | `string` | `"bastion"` | no |
| vs\_ext\_uplink\_nic | Karta sieciowa w dostępna z zewnątrz -- podłączenia bastiona | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lista\_prowadzacego | n/a |
| lista\_studencka | n/a |
