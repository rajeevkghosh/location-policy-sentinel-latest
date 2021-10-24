module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-secret-manager-location-pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}