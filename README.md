# terraform-homework
    
    
    ⬇⬇⬇  OHIO REGION ⬇⬇⬇

1) We need to open new file (ohio.tfvars)
2) inside of file provide this resources:
region = "us-east-2"

key_name = "my-key" 

port = [22, 80, 443]

availability_zone = "us-east-2a"

instance_type = "t2.micro"

aws_ami = "ami-050cd642fd83388e4"

instance_count = 1

3) After finishing write your resources, ensure save curent page and open terminal 
4) And write this codes

Terraform init 
Terraform apply -var-file ohio.tfvars --auto-approve

     just by this way you can destroy your resource

Terraform destroy -var-file ohio.tfvars --auto-approve
 
    ⬇⬇⬇  VIRGINIA REGION ⬇⬇⬇

1) We need to open new file (virginia.tfvars)
2) inside of file provide this resources:
region = "us-east-1"

key_name = "my-key" 

port = [22, 80, 443]

availability_zone = "us-east-1a"

instance_type = "t2.micro"

aws_ami = "ami-06b21ccaeff8cd686"

instance_count = 1

3) After finishing write your resources, ensure save curent page and open terminal 
4) And write this codes

Terraform init 
Terraform apply -var-file virginia.tfvars --auto-approve

     just by this way you can destroy your resource

Terraform destroy -var-file virginia.tfvars --auto-approve

    ⬇⬇⬇   CALIFORIA REGION   ⬇⬇⬇

1) We need to open new file (california.tfvars)
2) inside of file provide this resources:
region = "us-west-1"

key_name = "my-key" 

port = [22, 80, 443]

availability_zone = "us-west-1a"

instance_type = "t2.micro"

aws_ami = "ami-0cf4e1fcfd8494d5b"

instance_count = 1

3) After finishing write your resources, ensure save curent page and open terminal 
4) And write this codes

Terraform init 
Terraform apply -var-file california.tfvars --auto-approve

     just by this way you can destroy your resource

Terraform destroy -var-file california.tfvars --auto-approve

    ⬇⬇⬇    OREGON REGION   ⬇⬇⬇

1) We need to open new file (oregon.tfvars)
2) inside of file provide this resources:
region = "us-west-2"

key_name = "my-key" 

port = [22, 80, 443]

availability_zone = "us-west-2a"

instance_type = "t2.micro"

aws_ami = "ami-07c5ecd8498c59db5"

instance_count = 1

3) After finishing write your resources, ensure save curent page and open terminal 
4) And write this codes

Terraform init 
Terraform apply -var-file oregon.tfvars --auto-approve

     just by this way you can destroy your resource

Terraform destroy -var-file oregon.tfvars --auto-approve


