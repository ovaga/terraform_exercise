output "public_ip" {
  value = aws_instance.server1.public_ip
  }
  output "private_ip" {
  value = aws_instance.server.private_ip
  }

output "vpc_id" {
  value = aws_vpc.my_vpc.id

}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "subnet_id1" {
  value = aws_subnet.private_subnet.id
}
