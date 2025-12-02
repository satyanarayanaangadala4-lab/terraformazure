resource "azurerm_resource_group" "rg" {
    name="satya_rg"
    location="east-us"
    tags={
        owner="dev-env"
    }
  }