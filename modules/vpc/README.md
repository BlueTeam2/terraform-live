## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-google-modules/network/google | 8.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | The target environment | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project ID where VPC resources will be created | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where subnetworks will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network"></a> [network](#output\_network) | The name of the VPC being created |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | The names of the subnets being created |
