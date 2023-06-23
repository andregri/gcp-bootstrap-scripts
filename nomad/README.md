# VM
```console
$ cd nomad
$ terraform init
$ terraform apply \
  -var zone="us-east1-b" \
  -var gcp-creds="../sa.json" \
  -var project=$(echo $GOOGLE_PROJECT) \
  -var startup-script="startup-scripts/nomad.sh"
```

## Cleanup

```console
$ terraform destroy \
  -var zone="us-east1-b" \
  -var gcp-creds="../sa.json" \
  -var project=$(echo $GOOGLE_PROJECT) \
  -var startup-script="startup-scripts/nomad.sh"
```