
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

