module "terraform-aws-s3-bucket" {
  source = "./modules/terraform-aws-s3-bucket"  
}

output "print_s3_bucket_name" {
  value = module.terraform-aws-s3-bucket.s3-bucket
} 
