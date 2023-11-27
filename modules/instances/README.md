## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.service_instances](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_network_tags"></a> [common\_network\_tags](#input\_common\_network\_tags) | The target network tags that will be applied to all instances | `list(string)` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | The target environment | `string` | n/a | yes |
| <a name="input_instances"></a> [instances](#input\_instances) | A map of instances configurations | <pre>map(object({<br>    machine_type    = string<br>    network_ip      = string<br>    additional_tags = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_machines_desired_status"></a> [machines\_desired\_status](#input\_machines\_desired\_status) | The desired status of machines. Either "RUNNING" or "TERMINATED" | `string` | `"RUNNING"` | no |
| <a name="input_project"></a> [project](#input\_project) | The project ID where VPC resources will be created | `string` | n/a | yes |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | The subnet where CE resources will be created | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone where CE resources will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internal_ips"></a> [internal\_ips](#output\_internal\_ips) | The internal IPs of all instances |
