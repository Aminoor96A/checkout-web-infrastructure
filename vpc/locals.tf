locals{
  project = "checkout-web-infrastructure"
  name = "${local.project}-project"
  azs             = ["eu-west-1a", "eu-west-1b"]
  private_subnets = ["${var.cidr_base}1.0/24", "${var.cidr_base}2.0/24"]
  public_subnets  = ["${var.cidr_base}10.0/24", "${var.cidr_base}11.0/24"]

  tags = {
    Project = "local.project"
  }
}