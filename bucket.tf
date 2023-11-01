provider "aws" {
    access_key = ${var.aws_access_key}
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

module "s3" {
    source = "./s3_bucket_dir"
}

resource "aws_s3_bucket" "temps3examplelolololol" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"
    force_destroy = true
}
