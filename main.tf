terraform {
  backend "remote" {
    organization = "ffddorf"

    workspaces {
      prefix = "app-k8s-template-"
    }
  }
}

resource "kubernetes_namespace" "demo" {
  metadata {
    name = "demo"
  }
}
