# Solution Test 1

## Requirements

- Ansible 2.10.5
- Terraform v0.14.7
- stormssh 0.7.0
- google-auth v1.27.1
- Google Cloud SDK 328.0.0 - gcloud

## Usage

### Create the Terraform service account

- Create the service account in the Terraform admin project and download the JSON credentials:

```bash
export TF_ADMIN=hometest-tf-admin
export TF_CREDS=~/.config/gcloud/hometest-tf-admin.json

gcloud iam service-accounts create terraform --display-name "Hometest account"

gcloud iam service-accounts keys create ${TF_CREDS} --iam-account terraform@${TF_ADMIN}.iam.gserviceaccount.com
```

- Grant the service account permission to view the Admin Project and manage Cloud Storage:

```bash
gcloud projects add-iam-policy-binding ${TF_ADMIN} \
  --member serviceAccount:terraform@${TF_ADMIN}.iam.gserviceaccount.com \
  --role roles/editor
```

### Set up remote state in Cloud Storage

- Create the remote backend bucket in Cloud Storage for storage of the hometest.tfstate file:

```bash
gsutil mb -p ${TF_ADMIN} gs://${TF_ADMIN}
gsutil versioning set on gs://${TF_ADMIN} # Enable versioning for bucket
```

### Use Terraform to create a Compute Engine Instance and install Docker daemon

- Manager SSH Key of Admin account, create variables `var.ssh_user_test`, `var.ssh_key_test` and add to block `metadata` of Compute Instannce:

```bash
  metadata = {
    ssh-keys = <<EOT
${var.ssh_user_test}:${var.ssh_key_test}
EOT
  }
```

- Command initialize the backend:

```bash
terraform init
```

- Command Preview the Terraform changes:

```bash
terraform plan
```

- Command Apply the Terraform changes:

```bash
terraform apply
```

- After create Compute Engine instance the provisioner `local-exec` will call command `ansible-playbook` to install Docker daemon. Check configure at `main.tf`

- SSH into the instance created:

```bash
export instance_id=$(terraform output instance_id)
export project_id=$(terraform output project_id)

gcloud compute ssh ${instance_id} --project ${project_id}
```
