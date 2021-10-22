module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}

#module "tfstate-functions" {
    #source = "./tfstate-functions.sentinel"
#}

#module "tfconfig-functions" {
   # source = "./tfconfig-functions.sentinel"
#}

policy "enforce-name-prefix" {
    source = "./restrict-pubsub-region-policy.sentinel"
    enforcement_level = "hard-mandatory"
}
