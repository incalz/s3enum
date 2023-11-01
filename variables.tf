variable "bucket_name" { default = "s3-assignment-instance" }

# Both access keys need to be changed before apply.
variable "aws_access_key" {default = “<your_access_key>”}

variable "aws_secret_key" {default = “<your_secret_key>”}

variable "acl_value" { default = "private" }

variable "region" { default = "eu-central-1" }

