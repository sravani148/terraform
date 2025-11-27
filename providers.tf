terraform {
    required_providers {
        aws = {
            source = "/hashicorp/aws"
            
        }
    }
}
provider {
    region = "us-east-1"
}
