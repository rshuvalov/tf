terraform {
  backend "gcs" {
    bucket = "devops-course-tf"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/rshuvalov/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}