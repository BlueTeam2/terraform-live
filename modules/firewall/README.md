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
| [google_compute_firewall.ingress_rules](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | A map of ingress rule configurations | <pre>map(object({<br>    name  = string<br>    ports = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Network where firewall resources will be created | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project ID where firewall resources will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_services_allowed_ports"></a> [services\_allowed\_ports](#output\_services\_allowed\_ports) | Allowed ports for schedule services |
| <a name="output_services_target_tags"></a> [services\_target\_tags](#output\_services\_target\_tags) | Target network tags for schedule services |
