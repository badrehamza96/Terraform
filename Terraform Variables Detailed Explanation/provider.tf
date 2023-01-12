
provider "aws" {
  access_key = "${var.AWS.ACCESS_KEY}"
  secret_key = "${var.AWS.SECRET_KEY_HERE}"
  region     = "${var.AWS.REGION}"
}