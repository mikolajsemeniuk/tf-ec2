# TF-EC2
* Sign in to aws console 
* Create user using `iam` with `AdministratorAccess`
* Create pair key in ec2 using `.pem` and `RSA` and download it
* Use `aws configure` and put newly created user credentials
* Get `ami` from ec2 services and put it in `aws_instance` 
* `terraform init`
* `terraform validate`
* `terraform plan`
* `terraform apply`
* `terraform destroy`
* `chmod 400 tf-key.pem`
* `ssh -i tf-key.pem ec2-user@{instance_publicip}`