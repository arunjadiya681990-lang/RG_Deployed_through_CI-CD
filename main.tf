resource "azurerm_resource_group" "myulpa1" {
    name = "love_RG"
    location = "west us"
}

resource "azurerm_storage_account" "mygirlst" {
    name = "gitst1"
    resource_group_name = azurerm_resource_group.myulpa1.name
    location = azurerm_resource_group.myulpa1.location
    account_tier = "Standard"
    account_replication_type = "GRS"
}