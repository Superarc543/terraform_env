variable "aws_access_key" {
  default     = ""
  description = "AWS access_key"
}

variable "aws_secret_key" {
  default     = ""
  description = "AWS secret_key"
}

variable "region" {
  default     = "ap-southeast-1"
  description = "新加坡"
}

variable "aws_image_id" {
  #default = "ami-0149ee05111d0ac3f"
  default     = "ami-0d9f5ab6435e9b439"
  description = "Base-CentOS7"
}