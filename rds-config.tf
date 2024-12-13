data "terraform_remote_state" "rds" {
    backend = "s3"
    config = {
        bucket = "tcl-terraform-bucket"
        key = "soat8-g6/rds/terraform.tfstate"
        region = "us-east-1"
    }
}

variable "rds_endpoint" {
    default = data.terraform_remote_state.rds.outputs.rds_endpoint
}

variable "rds_security_group_id" {
    default = data.terraform_remote-state.rds.outputs.rds_security_group_id
}