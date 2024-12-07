variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "tech-challenge-lanchonete"
}

variable "vpcCidr" {
  default = "172.31.0.0/16"
}

variable "instanceType" {
  default = "t3a.small"
}

variable "accountIdVocLabs" {
  default = "590183731131" // My Account ID - Check if it is possible to get this from an Environment Variable
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}
