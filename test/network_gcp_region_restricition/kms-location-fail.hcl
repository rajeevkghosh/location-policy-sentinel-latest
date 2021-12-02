module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-kms-location-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}