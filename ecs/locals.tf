locals{
  project = "checkout-web-infrastructure"
  name = "checkout-nginx"

  tags = {
    Project = "${local.project}"
  }
}