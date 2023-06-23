variable "gcp-creds" {
    type = string
    sensitive = true
    default = ""
}

variable "project" {
    type = string
}

variable "zone" {
    type = string
    default = "us-east1-b"
}