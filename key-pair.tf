#resource "tls_private_key" "sshkeys" {
#  algorithm = "RSA"
#  rsa_bits  = "2048"
#}


resource "aws_key_pair" "k8s-cluster-key" {
  key_name   = "k8s-cluster-key"
  public_key = var.public_key
}

