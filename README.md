
## Up & Running
1. create a secrets.tfvars with the following
```shell
aws_access_key = "aws_access_key"
aws_secret_key = "aws_secret_key"
aws_region = "aws_region"
```
2. then execute the following
```shell

terraform init
terraform plan --var-file="secrets.tfvars" -state="app.tfstate"
terraform apply --var-file="secrets.tfvars" -state="app.tfstate"
```



## Some requirements related to the Nanodegree
- [screenshots](screenshots)
- [Udacity diageram 1](infra_diagrams/Udacity_Diagram_1.pdf)
- [Udacity diageram 2](infra_diagrams/Udacity_Diagram_2.pdf)
- [Initial Cost Estimate](cost/Initial_Cost_Estimate.csv)
- [Reduced Cost Estimate](cost/Reduced_Cost_Estimate.csv)
> Relaying on reserved instances instead of on-demand instances
- [Increased Cost Estimate](cost/Increased_Cost_Estimate.csv)
> increased DB and server resources



