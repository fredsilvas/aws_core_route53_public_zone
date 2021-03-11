module "public_zone" {
  source = "git::https://git.ifpr.edu.br/infraestrutura/ifpr-devops/terraform/modulos/modulos_aws/route53/zones/public_zone.git"

  name    = var.nome_zona
  comment = "Public Zone - ${var.nome_zona}"

  tags = {
    Name             = "public_zone_${var.nome_zona}"
    CentroDeCusto    = var.centro_de_custo
    Proprietario     = var.proprietario
    ChamadoInterno   = var.chamado_interno
    Ambiente         = var.ambiente
    Projeto          = var.projeto
    Vpc              = var.vpc
    ResponsavelInfra = var.responsavel_infra
    Critico          = true
    DataCriacao      = var.data_criacao
    DataAlteracao    = formatdate("DD-MM-YYYY-hh-mm-ss", timeadd(timestamp(), "-3h"))
    Sensibilidade    = "5"
    Criptografado    = false
  }

}