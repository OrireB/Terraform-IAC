variable "aws_region" {
  default     = "us-east-1"
  type        = string
  description = "AWS region to deploy resources"
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "instance_tag" {
  default = "MyEC2Instance"
}

variable "ami_id" {
  default = "ami-05ffe3c48a9991133"   # Change this to your desired AMI (Amazon Linux 2 example for us-east-1)
  type    = string
}

variable "bucket_name" {
  default = "victoriousorirewebspace2025628-bucket"  # Change this to a unique S3 bucket name
  description = "Unique name for your S3 bucket"
  type        = string
}

variable "bucket_tag" {
  default = "MyS3Bucket"
}