module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-dataproc-location-null.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}