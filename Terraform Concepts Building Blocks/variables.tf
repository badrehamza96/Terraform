variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-central-1"
}
variable "Security_Groups" {
  type= list
#eu-central-1        CLB-SG              launch-wizard-1	   instance-sg-2	
  default= ["sg-0682e6febb66951e0","sg-06bbfd5eb88ae28a1","sg-0af18c497c390f7ef"]
}

variable "AMIS" {
  type=map
  default = {
     eu-central-1 = "ami-0039da1f3917fa8e3"
     eu-west-1    = "ami-0f29c8402f8cce65c"
     eu-west-2    = "ami-09a2a0f7d2db8baca"
     eu-west-3    = "ami-052f10f1c45aa2155"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default= "hb_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default= "hb_key.pub"
}

variable "INSTANCE_USERNAME" {
  default= "ubuntu"
}

