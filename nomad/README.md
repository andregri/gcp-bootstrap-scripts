# VM
```console
$ cd nomad
$ terraform init
$ terraform apply \
  -var zone="us-east1-b" \
  -var gcp-creds="../sa.json" \
  -var project=$(echo $GOOGLE_PROJECT) \
  -var startup-script="startup-script.sh"
```

Verify connectivity:
```console
$ nomad node status
```

Export the nomad address:
```console
$ export NOMAD_ADDR=http://localhost:4646
```

## Cleanup

```console
$ terraform destroy \
  -var zone="us-east1-b" \
  -var gcp-creds="../sa.json" \
  -var project=$(echo $GOOGLE_PROJECT) \
  -var startup-script="startup-script.sh"
```