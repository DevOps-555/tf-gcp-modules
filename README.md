###### Github Clone and switch the project to master branch
```
git clone < Get the clone url from the github acount>
git pull
```

##### Terraform Command's used 

```
terraform init --> command initializes a working directory containing configuration files and installs plugins for required providers.
terraform plan -->  lets you to preview the actions Terraform would take to modify your infrastructure, or save a speculative plan which you can apply later. 
terraform apply --> command executes the actions proposed in a terraform plan
```

###### Terraform Module & Resources File Structure Configuration:

**Root-Module** 
```
gcp --> This consists of main.tf, output.tf, variable.tf, version.tf which are dependent on below mentioned modules:
```

**Modules**
```
modules --> Consists of GCP Service
            gce/ 
            networking/
            srcipts/
```

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

