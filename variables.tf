#
# Variables Configuration
#

variable "cluster-name" {
  default = "eks-ACADA"
  type    = string
}
variable "key_pair_name" {
  default = "ekskey"
}
variable "eks_node_instance_type" {
  default = "t2.medium"
}
