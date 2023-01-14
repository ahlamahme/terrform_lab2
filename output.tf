output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnets_id" {
  value = aws_subnet.private_subnet.id
}

output "http" {
  value = aws_security_group.http-allowed.id
}

output "web1_ip" {
    value = aws_instance.web1.public_ip
}

output "web2_ip" {
    value = aws_instance.web1.private_ip
}
