provider "aws" {
  region = var.region
}

resource "aws_key_pair" "key" {
  key_name   = var.key.name
  public_key = var.key.key
}