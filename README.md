# terraform-iac

## 📘 Description

This project provisions AWS infrastructure using Terraform. It creates:

- An EC2 instance (Amazon Linux 2)
- An S3 bucket
- A security group that allows SSH (port 22) access

---

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- An AWS account with a user that has **programmatic access** (Access Key & Secret)

---

## Resources Created

- **EC2 Instance** (Amazon Linux 2)
- **S3 Bucket**
- **Security Group** (SSH access on port 22)

---

## Project Structure

```plaintext
terraform-iac/
├── provider.tf
├── variables.tf
├── ec2.tf
├── s3.tf
├── outputs.tf
├── terraform.tfvars
├── security_group.tf       # Added in step 3
├── updatedec2.tf           # Updated EC2 config with security group

---

## File Descriptions

- `variables.tf` - Input variables
[variables..tf](the github to the uploaded file)

provider.tf – AWS provider setup

variables.tf – Input variables (region, AMI, tags, etc.)

ec2.tf – Initial EC2 instance setup

s3.tf – S3 bucket configuration

outputs.tf – Displays EC2 instance ID and S3 bucket name

terraform.tfvars – Optional: custom variable overrides

security_group.tf – Defines SSH-enabled security group (added later)

updatedec2.tf – Updated EC2 resource referencing security group

Re
