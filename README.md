- [Udacity diageram 1](Udacity_Diagram_1.pdf)

- [Udacity diageram 2](Udacity_Diagram_2.pdf)

- [Initial Cost Estimate](Initial_Cost_Estimate.csv)

- [Reduced Cost Estimate](Reduced_Cost_Estimate.csv)
> Relaying on reserved instances instead of on-demand instances

- [Increased Cost Estimate](Increased_Cost%20Estimate.csv)
> increased DB and server resources

```shell

terraform init
terraform plan --var-file="secrets.tfvars" -state="app.tfstate"
terraform apply --var-file="secrets.tfvars" -state="app.tfstate"
```

