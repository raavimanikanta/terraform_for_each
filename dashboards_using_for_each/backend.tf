terraform {
  backend "s3" {
    bucket         	   = "mani-terraform-pipeline"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-1"
#     encrypt        	   = true
  #  dynamodb_table = "mcd_nr_pipeline_table"
  }
}
