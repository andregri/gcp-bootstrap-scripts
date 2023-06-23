# GCP Lab Bootstrap Scripts

Collection of scripts to bootstrap labs on GCP as fastest as possible.

## Requirements

Init the gcloud cli:
```console
$ gcloud init
```

Prepare environment variables for terraform:
```console
$ export GOOGLE_CREDENTIALS=$(cat sa.json | jq -c)
$ export GOOGLE_PROJECT=$(cat sa.json | jq -c -r '.project_id')
```