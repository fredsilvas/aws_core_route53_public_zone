##############################################################################################
### OUTPUT - Public Zone
output "Public_Zone_Info" {
  value = module.public_zone
}

output "Public_Zone_Domain" {
  value = var.nome_zona
}