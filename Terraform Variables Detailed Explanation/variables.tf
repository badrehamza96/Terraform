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