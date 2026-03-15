# Terraform AWS Infrastructure (Modular)

This project provisions AWS infrastructure using Terraform with a modular architecture following DevOps best practices.

## Infrastructure Created

* VPC (Virtual Private Cloud)
* Public Subnet
* EC2 Instance
* S3 Bucket

## Architecture

Developer → Terraform → AWS Cloud → VPC → EC2 + S3

## Project Structure

```
modules/
 ├ vpc
 ├ ec2
 └ s3
```

## Tools Used

* Terraform
* AWS
* Infrastructure as Code (IaC)
* GitHub

## Terraform Workflow

```
terraform init
terraform plan
terraform apply
terraform destroy
```

## Purpose

This project demonstrates how cloud infrastructure can be automated using Terraform and modular architecture.

## Author

Dhaval Dabhi
