
variable "aws_region" {
    description = "AWS region"
    type = string
    default = "eu-central-1"
}

variable "instance_types" {
    description = "EC2 Instance type"
    type = list(string)
    default = ["t3.micro", "t3.small"]
}

variable "intances_map" {
    type = map(string)
    default = {
        "dev"  = "t3.micro",
        "qa"   = "t3.small",
        "prod" = "t3.large",
    }
}

variable "instance_keypair" {
    description = "key pair to EC2"
    type = string
    default = "tf-key"
}