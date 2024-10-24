locals {
  custom_landing_zones = {
    "Prod" = {
      display_name               = "Prod"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "PGE_Polices"
        parameters     = {}
        access_control = {}
      }
    }
    "Dev" = {
      display_name               = "Dev"
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
    "Test" = {
      display_name               = "Test"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "QA" = {
      display_name               = "QA"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "Training" = {
      display_name               = "Training"
      parent_management_group_id = "Apps"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "PGE_Polices"
        parameters = {
        }
        access_control = {}
      }
    }
    "Innovation" = {
      display_name               = "Innovation"
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