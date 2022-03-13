# terraform_ec2_sshkey

Terraform module to add ssh keys to AWS for EC2 use using terraform.

## Variables

``` terraform
# name: the name of the key
# key: ssh public key
variable "key" {default = { name = "example", key = "ssh-ed25519 AAAA1234567890 user@example.org"}}```
```

## Terraform example

``` terraform
######################
# VPC Variables
######################
variable "key_user1" {default = { name = "example", key = "ssh-ed25519 AAAA1234567890 user@example.org"}}```

###################
# Key
###################
module "ec2_sshkey_user1" {
  source = "github.com/virsas/terraform_ec2_sshkey"
  key = var.key_user1
}
```
