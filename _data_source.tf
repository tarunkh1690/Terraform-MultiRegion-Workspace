data "aws_availability_zones" "available" {}

data "aws_subnet_ids" "example" {
  vpc_id = aws_vpc.k8s-vpc.id
  #  depends_on = [time_sleep.wait_10_seconds_private]
}


