Terraform AWS Provisioning Guide

Quickly create AWS resources using Terraform, enhance configuration management with Terragrunt, and automate deployments via Atlantis.
Prerequisites

    Terraform (Specify version)
    Terragrunt (Specify version)
    Git
    AWS Account and CLI

Quick Setup

    Clone the Repository: Fork and clone to start.
    AWS Credentials: Set up using the AWS CLI or environment variables.
    Install Terraform and Terragrunt: Follow their official guides.
    Set Up Atlantis: For automation, integrate Atlantis with your GitHub repo.

Project Layout

    terraform/: Terraform files for AWS resources.
    terragrunt/: DRY configurations with Terragrunt.
    .atlantis.yaml: Configuration for Atlantis (if used).

Deployment Steps
Terraform

    Go to terraform/, define AWS resources in .tf files.

    Initialize and apply:

    sh

    terraform init
    terraform apply

Terragrunt

    Switch to terragrunt/, use terragrunt.hcl for configuration.

    Apply with Terragrunt for DRY:

    sh

    terragrunt apply

Atlantis

    Ensure .atlantis.yaml is ready.
    Submit a PR on GitHub.
    Atlantis auto-processes the Terraform changes.

Best Practices

    Version control your configurations.
    Use separate state files per environment.
    Carefully review Atlantis plans before merge.
    Keep Terraform and Terragrunt updated.