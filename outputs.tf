output "ec2_instance_id" {
  value = aws_instance.my_greatec2.id
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.victoriousorirewebspace2025628_bucket.id
  description = "Name of the created S3 bucket"
}
