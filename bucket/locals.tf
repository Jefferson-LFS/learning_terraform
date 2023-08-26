locals {
  ip_filepath  = "ips.json"
  content_type = "application/json"
  common_tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Ower        = "Jefferson Lucas"
    Environment = var.envinronment
    UpdateAt    = "2023-06-25"

  }

}
