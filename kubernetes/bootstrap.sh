# Enable container service on gcp
gcloud services enable container

# Create a kubernetes cluster with 3 nodes named "lab"
gcloud container clusters create lab --num-nodes 3 --machine-type e2-standard-2
