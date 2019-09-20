
provider "helm" {
  version        = "~> 0.9"
  install_tiller = true

  kubernetes {
    host     = "${azurerm_kubernetes_cluster.k8s.kube_config.0.host}"
    client_key             = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)}"
    client_certificate     = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)}"
    cluster_ca_certificate = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)}"
  }
}

resource "helm_release" "ingress" {
    name      = "ingress"
    chart     = "stable/nginx-ingress"

    set {
        name  = "rbac.create"
        value = "true"
    }
}