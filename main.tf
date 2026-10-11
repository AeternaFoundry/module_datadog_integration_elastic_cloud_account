resource "datadog_integration_elastic_cloud_account" "integration_elastic_cloud_accounts" {
  for_each = var.integration_elastic_cloud_accounts

  authentication = each.value.authentication
  name           = each.value.name
  settings       = each.value.settings
  dataflows      = each.value.dataflows
}

