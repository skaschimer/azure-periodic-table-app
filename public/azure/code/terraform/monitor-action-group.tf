data "azurerm_client_config" "current" {
}

resource "azurerm_monitor_action_group" "main" {
  name = "ag-${local.naming_suffix}"
  resource_group_name = azurerm_resource_group.main.name
  short_name          = "p0action"
  
  arm_role_receiver {
    name = "ag-${local.naming_suffix}"
    role_id                 = "de139f84-1756-47ae-9be6-808fbbe84772"
    use_common_alert_schema = true
  }
  
  automation_runbook_receiver {
    name = "ag-${local.naming_suffix}"
    automation_account_id   = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001"
    runbook_name            = "my runbook"
    webhook_resource_id     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert"
    is_global_runbook       = true
    service_uri             = "https://s13events.azure-automation.net/webhooks?token=randomtoken"
    use_common_alert_schema = true
  }
  
  azure_app_push_receiver {
    name = "ag-${local.naming_suffix}"
    email_address = "admin@contoso.com"
  }
  
  azure_function_receiver {
    name = "ag-${local.naming_suffix}"
    function_app_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp"
    function_name            = "myfunc"
    http_trigger_url         = "https://example.com/trigger"
    use_common_alert_schema  = true
  }
  
  email_receiver {
    name = "ag-${local.naming_suffix}"
    email_address = "admin@contoso.com"
  }
  
  email_receiver {
    name = "ag-${local.naming_suffix}"
    email_address           = "devops@contoso.com"
    use_common_alert_schema = true
  }
  
  event_hub_receiver {
    name = "ag-${local.naming_suffix}"
    event_hub_namespace     = "eventhubnamespace"
    event_hub_name          = "eventhub1"
    subscription_id         = "00000000-0000-0000-0000-000000000000"
    use_common_alert_schema = false
  }
  
  itsm_receiver {
    name = "ag-${local.naming_suffix}"
    workspace_id         = "${data.azurerm_client_config.current.subscription_id}|${azurerm_log_analytics_workspace.main.workspace_id}"
    connection_id        = "53de6956-42b4-41ba-be3c-b154cdf17b13"
    ticket_configuration = "{"PayloadRevision":0,"WorkItemType":"Incident","UseTemplate":false,"WorkItemData":"{}","CreateOneWIPerCI":false}"
    region               = "southcentralus"
  }
  
  logic_app_receiver {
    name = "ag-${local.naming_suffix}"
    resource_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp"
    callback_url            = "https://logicapptriggerurl/..."
    use_common_alert_schema = true
  }
  
  sms_receiver {
    name = "ag-${local.naming_suffix}"
    country_code = "1"
    phone_number = "1231231234"
  }
  
  voice_receiver {
    name = "ag-${local.naming_suffix}"
    country_code = "86"
    phone_number = "13888888888"
  }
  
  webhook_receiver {
    name = "ag-${local.naming_suffix}"
    service_uri             = "http://example.com/alert"
    use_common_alert_schema = true
  }
}