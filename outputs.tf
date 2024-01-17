output "public-ip-vm1" {
  value = module.ec2-vm-1.public_ip
}

output "public-dns-vm1" {
  value = module.ec2-vm-1.public_dns
}

output "public-ip-vm2" {
  value = module.ec2-vm-2.public_ip
}

output "public-dns-vm2" {
  value = module.ec2-vm-2.public_dns
}