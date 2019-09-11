output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr_block" {
  value = "${module.vpc.vpc_cidr_block}"
}

output "env_name" {
  value = "${var.ENVIRONMENT}"
}

output "public_subnets" {
  value =  "${join(",", module.vpc.public_subnets)}"
}

output "private_subnets" {
  value =  "${join(",", module.vpc.private_subnets)}"
}

output "logs_bucket" {
  value = "${aws_s3_bucket.logs.id}"
}

#output "bastion_sg" {
#  value = "${module.bastion.bastion_sg}"
#}

output "logs_bucket_arn" {
  value = "${aws_s3_bucket.logs.arn}"
}

output "data_bucket" {
  value = "${aws_s3_bucket.data.id}"
}

output "data_bucket_arn" {
  value = "${aws_s3_bucket.data.arn}"
}