# VM
```console
$ cd vm
$ terraform init
$ terraform apply \
  -var zone="us-east1-b" \
  -var gcp-creds="../sa.json" \
  -var project=$(echo $GOOGLE_PROJECT)
```

## Cleanup

```console
$ terraform destroy \
  -var zone="us-east1-b" \
  -var gcp-creds="../sa.json" \
  -var project=$(echo $GOOGLE_PROJECT)
```