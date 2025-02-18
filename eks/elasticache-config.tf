data "terraform_remote_state" "elasticache" {
  backend = "s3"
  config = {
    bucket = "tcl-terraform-bucket-apresentacao"
    key    = "soat8-g6/elasticache/terraform.tfstate"
    region = "us-east-1"
  }
}
