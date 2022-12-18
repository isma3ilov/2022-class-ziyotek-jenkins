provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner = "rady"
    }
  }
}

terraform {
   backend "s3" {
     bucket = "jenkins-bucket-ziyotek-234205822873"
     key    = "tfstate"
     region = "us-east-1"
   }
 }