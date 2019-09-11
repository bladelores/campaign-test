output "vpc_id" {
  value = "${module.infrastructure.vpc_id}"
}

output "vpc_cidr_block" {
  value = ["${module.infrastructure.vpc_cidr_block}"]
}

output "env_name" {
  value = "${module.infrastructure.env_name}"
}

output "public_subnets" {
  value = "${module.infrastructure.public_subnets}"
}

output "private_subnets" {
  value = "${module.infrastructure.private_subnets}"
}

#output "bastion_sg" {
#  value = "${module.infrastructure.bastion_sg}"
#}

output "logs_bucket" {
  value = "${module.infrastructure.logs_bucket}"
}

output "logs_bucket_arn" {
  value = "${module.infrastructure.logs_bucket_arn}"
}

output "data_bucket" {
  value = "${module.infrastructure.data_bucket}"
}

output "data_bucket_arn" {
  value = "${module.infrastructure.data_bucket_arn}"
}
