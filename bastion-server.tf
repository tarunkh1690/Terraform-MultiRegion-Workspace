resource "aws_instance" "bastion" {
  count                  = 1
  ami                    = var.ami[var.aws_region] 
  instance_type          = "t2.micro"
  key_name               = "k8s-cluster-key"
  vpc_security_group_ids = [aws_security_group.k8s_cluster_sg.id]
  subnet_id              = aws_subnet.k8s-public-subnet[count.index].id
#  iam_instance_profile   = aws_iam_instance_profile.k8s-profile.name


  tags = merge(local.common_tags, { 
    Name = "${local.name_prefix}-${count.index}" 
  })

  depends_on = [
    aws_security_group.k8s_cluster_sg,
    aws_subnet.k8s-public-subnet,
  ]

}

