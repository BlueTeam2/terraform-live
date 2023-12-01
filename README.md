# Terraform Live Infrastructure

This repository contains Terraform code to provision live infrastructure for Schedule application using three modules: VPC, Firewall, and Instances.

> **Note that the structure is configured to work with a remote backend state, and all changes are applied automatically on a success merge to the `prod` or `stage` branches through the GCP Cloud Build service. It's generally not designed to be managed through the local Terraform state!**

## Project Structure

The project is organized into the following directories:

1. `modules/`
   - Contains the reusable Terraform modules for creating VPC, firewall rules, and instances under GCP.

2. `environments/`
    - `prod/`: Production environment configuration.
    - `stage/`: Stage environment configuration.

## Modules

### 1. VPC Module

The VPC module creates a Virtual Private Cloud for the infrastructure.

Usage:

```
module "vpc" {
  source = "../modules/vpc"

  // VPC configuration variables
}
```

### 2. Firewall Module

The Firewall module sets up GCP firewall rules for the infrastructure.

Usage:

```
module "firewall" {
  source = "../modules/firewall"

  // Firewall configuration variables
}
```

### 3. Instances Module

The Instances module provisions Compute Engine machines in the infrastructure. 

Usage:

```
module "instances" {
  source = "../modules/instances"

  // Instances configuration variables
}
```

## Branching Strategy

The repository follows a branching strategy for managing different environments:

    prod: The branch for the production environment.
    stage: The branch for the stage environment.
