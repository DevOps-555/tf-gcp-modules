
**Init⚙️**
```
From within the module's directory run terraform init -backend-config=../env/<env-name>_<module>.state.tf where env name is the environment you wish to view/edit and module is either gcp !!.
The state files are stored in a GCS storage bucket. The location can be found in the respective .state.tf files.

```

**Plan📖**
```
From within the module's directory run terraform plan -var-file=../env/<env-name>.tfvars where env name is the environment you wish to view/edit.
Make sure the changes you made matched the proposed changes in the plan.
```

**Apply🤖**
```
To apply changes, make changes on a new branch and make a PR into the main branch. This will trigger a terraform plan in GitHub Actions.
If the output of the plan step is as expected, run a manual workflow with the name of the environment you wish to apply the chnages to. This will trigger a terraform apply action.
```

### Error:

```
Error: Incompatible provider version

Provider registry.terraform.io/hashicorp/template v2.2.0 does not have a package available for your current platform, darwin_arm64.
Provider releases are separate from Terraform CLI releases, so not all providers are available for all platforms. Other versions of this provider may have different platforms supported.
```

## Soultion: 

```

git clone https://github.com/hashicorp/terraform-provider-template
cd terraform-provider-template
go build
mkdir -p ~/.terraform.d/plugins/registry.terraform.io/hashicorp/template/2.2.0/darwin_arm64
mv terraform-provider-template ~/.terraform.d/plugins/registry.terraform.io/hashicorp/template/2.2.0/darwin_arm64/terraform-provider-template_v2.2.0_x5
chmod +x ~/.terraform.d/plugins/registry.terraform.io/hashicorp/template/2.2.0/darwin_arm64/terraform-provider-template_v2.2.0_x5

```