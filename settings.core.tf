locals {
  custom_landing_zones = {
    "${var.apps_prefix}-Prod" = {
      display_name               = "${var.apps_prefix}-Prod"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "PGE_Polices"
        parameters     = {}
        access_control = {}
      }
    }
    "${var.apps_prefix}-Dev" = {
      display_name               = "${var.apps_prefix}-Dev"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "Apps" = {
      display_name               = "Apps"
      parent_management_group_id = "${var.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "${var.apps_prefix}-Test" = {
      display_name               = "${var.apps_prefix}-Test"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "${var.apps_prefix}-QA" = {
      display_name               = "${var.apps_prefix}-QA"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "${var.apps_prefix}-Training" = {
      display_name               = "${var.apps_prefix}-Training"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "${var.apps_prefix}-Innovation" = {
      display_name               = "${var.apps_prefix}-Innovation"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
  }
}