### コマンド

```
terraform init -backend-config="./dev.tfbackend"
terraform plan -var-file="./dev.tfvars"
terraform apply -var-file="./dev.tfvars"
```