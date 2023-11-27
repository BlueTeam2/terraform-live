## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_firewall"></a> [firewall](#module\_firewall) | ../../modules/firewall | n/a |
| <a name="module_instances"></a> [instances](#module\_instances) | ../../modules/instances | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | GCP project ID | `string` | n/a | yes |
| <a name="input_provider_region"></a> [provider\_region](#input\_provider\_region) | Region where provider will operate. Can be overriden by resources explicitly | `string` | n/a | yes |
| <a name="input_provider_zone"></a> [provider\_zone](#input\_provider\_zone) | Zone where provider will operate. Can be overriden by resources explicitly | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_allowed_ports_by_service"></a> [allowed\_ports\_by\_service](#output\_allowed\_ports\_by\_service) | The firewall allowed for schedule services |
| <a name="output_internal_ips"></a> [internal\_ips](#output\_internal\_ips) | The internal IP addresses for schedule instances |
| <a name="output_network_tags"></a> [network\_tags](#output\_network\_tags) | The network tags for schedule services |
