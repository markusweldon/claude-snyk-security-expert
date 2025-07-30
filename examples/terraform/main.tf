# Example Terraform configuration with security issues for demonstration
provider "aws" {
  region = "us-east-1"
}

# S3 bucket with potential security issues
resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"
}

# Security group with overly permissive rules
resource "aws_security_group" "web" {
  name_prefix = "web-"
  
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Too permissive
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# RDS instance without encryption
resource "aws_db_instance" "example" {
  identifier             = "mydb"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "myapp"
  username               = "admin"
  password               = "password123"  # Hardcoded password
  skip_final_snapshot    = true
  publicly_accessible    = true  # Security risk
  storage_encrypted      = false # Not encrypted
}