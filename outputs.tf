output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "instance_public_ip" {
  description = "Public IP of the Ubuntu instance"
  value       = aws_instance.web.public_ip
}

output "private_key_path" {
  description = "Path to the private key file"
  value       = local_file.private_key.filename
}
