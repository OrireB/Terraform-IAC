# Terraform IAC – AWS Infrastructure Automation

## Overview

This project demonstrates the use of **Terraform** to provision and manage AWS cloud resources using **Infrastructure as Code (IaC)**.

Using Terraform, we:
- Set up an **EC2 instance**
- Create an **S3 bucket**
- Later, update the infrastructure by adding a **Security Group**

All resources are deployed and managed consistently and repeatably through Terraform scripts.

---

## What is Terraform?

**Terraform** is an open-source tool developed by [HashiCorp](https://www.hashicorp.com/terraform) that allows you to define, provision, and manage infrastructure in a **declarative** way using simple configuration files.

Think of Terraform as a tool to automate the creation of infrastructure (servers, databases, networks, etc.) just like you would automate software deployment — but instead of clicking buttons in the AWS console, you write code.

### ✅ Why Use Terraform?

- **Infrastructure as Code (IaC)** – Manage cloud resources through code for versioning and repeatability.
- **Cloud Agnostic** – Supports AWS, Azure, GCP, and many others.
- **Automation** – Deploy entire environments in minutes.
- **Tracking Changes** – See exactly what changes will be made before applying them.
- **Collaboration** – Code can be reviewed, reused, and tracked in Git.

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

```
terraform-iac/
├── provider.tf
├── variables.tf
├── ec2.tf
├── s3.tf
├── outputs.tf
├── terraform.tfvars
├── security_group.tf       # Added in step 3
├── updatedec2.tf           # Updated EC2 config with security group
```

---

## File Descriptions

- **provider.tf** – AWS provider setup
[provider.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-b1ce465309ea8053579092908d4a1eda1a02f48a6287db574dd2a2104935dd2f)

- **variables.tf** – Input variables (region, AMI, tags, etc.)
[variable.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-05b5a57c136b6ff596500bcbfdcff145ef6cddea2a0e86d184d9daa9a65a288e)

- **ec2.tf** – Initial EC2 instance setup
[ec2.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-fa581fd4d8018f39bfcf7588af7ca977e92000334a78b836bb2207cf00ad0bdd)

- **s3.tf** – S3 bucket configuration
[s3.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-beadbc29548607cf77c3c6882a0c49559eb088a560805d12a445c52f80f07b31)

- **outputs.tf** – Displays EC2 instance ID and S3 bucket name
[outputs.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-de6c47c2496bd028a84d55ab12d8a4f90174ebfb6544b8b5c7b07a7ee4f27ec7)

- **terraform.tfvars** – Optional: custom variable overrides
[terraform.tfvars](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-ea319dda5a35ac9ff7b01d3483e0ca0cf231d35d8d94a789bab86328aba7cb15)

- **security_group.tf** – Defines SSH-enabled security group (added later)
[security_group.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-227592f057f0a25e59a089bb726b7ae0b2baff4a58acdaba04b4dae8d1dc2400)

- **updatedec2.tf** – Updated EC2 resource referencing security group
[updatedec2.tf](https://github.com/OrireB/Terraform-IAC/commit/7fd1fff257e5a656686180809e10691d01c34cc6#diff-46f0a251ee20f69833fda136228c280732b86b827e0f9683ca0f26de8d7b09ed)

---

## Deployment Steps

From your terminal (inside the project folder), run:
```
terraform init
terraform validate
terraform plan
terraform apply
```

- To destroy everything when you're done

```
terraform destroy
```

---

## Variables You May Need to Edit

### Variable	File	Description

- `bucket_name` in `variables.tf` → Must be globally unique, change to **your bucket name**
- `ami_id` in `variables.tf` → should match your AWS region.
- `aws_region` in `variables.tf` → Change only if you want a different region

---

## References

- [Terraform AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

- [HashiCorp Terraform Docs](https://developer.hashicorp.com/terraform/docs)

---

## Screenshots

- **EC2 instance**

![EC2 instance](https://raw.githubusercontent.com/OrireB/Terraform-IAC/e1b866d7f40cca7232c16d98514009321f16e924/EC2%20Instance.png)

---

- **S3 bucket**

![S3 bucket](https://raw.githubusercontent.com/OrireB/Terraform-IAC/e1b866d7f40cca7232c16d98514009321f16e924/S3%20bucket.png)

- **Security Group**

![Security Group](https://raw.githubusercontent.com/OrireB/Terraform-IAC/6f885582279d36526ca64351c9c63e9bf3ca110e/Security%20Group.png)

