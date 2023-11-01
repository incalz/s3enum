provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

module "s3" {
    source = "./s3_bucket_dir"
}

resource "aws_s3_bucket" "assignment_s3_bucket" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"
    force_destroy = true
}

resource "aws_s3_bucket_object" "file_adder" {
    for_each = fileset("./s3_bucket_dir/", "*")
    bucket = aws_s3_bucket.assignment_s3_bucket.id
    key = each.value
    source = "./s3_bucket_dir/${each.value}"
    etag = filemd5("./s3_bucket_dir/${each.value}")
}
