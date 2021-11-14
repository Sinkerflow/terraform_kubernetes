# Terraform sinkerflow
Sinkerflow terraform for yandex cloud
For use you must create provider.tf

Template provider.tf:
                
        
        terraform {
        required_providers {

            yandex = {
            source  = "yandex-cloud/yandex"
            version = "0.61.0"
            
            }
        }
        }

        provider "yandex" {
        token                    = ""
        cloud_id                 = ""
        folder_id                = ""
        zone                     = "ru-central1-b"
        }

