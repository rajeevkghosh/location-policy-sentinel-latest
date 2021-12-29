module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-gke-cluster-location-null.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}