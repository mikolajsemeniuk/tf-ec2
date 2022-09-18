# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = [for instance in aws_instance.ec2demo: instance.public_ip]
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = {for c, instance in aws_instance.ec2demo: c => instance.public_dns}
}

output "splat_instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.ec2demo[*].public_dns
}