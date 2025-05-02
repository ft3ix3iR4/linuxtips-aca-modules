#### GENERAL CONFIGUTATIONS ####

variable "project_name" {
  description = "O nome do projeto, usado para nomear recursos no escopo deste Terraform."
  type        = string
}

variable "region" {
  description = "A região da AWS onde os recursos serão criados."
  type        = string
}

variable "vpc_id" {
  description = "O ID da VPC."
  type        = string
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

#### ECS GENERAL ####
variable "capacity_providers" {
  description = "A lista dos capacity providers que serão permitidos no cluster fargate."
  type        = list(any)
  default = [
    "FARGATE", "FARGATE_SPOT"
  ]
}

variable "acm_certs" {
  description = "Lista de ARNs de certificados ACM que serão associados a recursos como load balancers no cluster ECS. Caso não sejam especificados, será usada a configuração padrão vazia."
  type        = list(string)
  default     = []
}