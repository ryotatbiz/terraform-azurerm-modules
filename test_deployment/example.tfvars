location = "japaneast"
tags = {
  owner       = "ryota_tanigawa"
  environment = "development"
}

resource_groups = {
  resource_group_1 = {
    name = "example-rg-1"
  }
}

virtual_networks = {
  virtual_network_1 = {
    virtual_network = {
      name                = "example-vnt-1"
      resource_group_name = "example-rg-1"
      address_space = [
        "192.168.1.0/25",
        "192.168.1.128/25",
      ]
      subnets = {
        subnet_1 = {
          name = "example-snt-11"
          address_prefixes = [
            "192.168.1.0/25"
          ]
        }
        subnet_2 = {
          name = "example-snt-12"
          address_prefixes = [
            "192.168.1.128/25"
          ]
        }
      }
    }
  }
}