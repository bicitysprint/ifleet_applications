connection: "db"

# include all the views
include: "*.view"

datagroup: ifleet_applications_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "10 hour"
}

datagroup: sc_compliance_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "5 hour"
}

datagroup: ifleet_drivers_default_datagroup {
  max_cache_age: "5 hour"
}


explore: ifleet_sc_expiry_view {
  label: "Ifleet SC Expiry"
  persist_with: sc_compliance_default_datagroup
  group_label: "Ifleet"
}


explore: ifleet_applications {
  persist_with: ifleet_applications_default_datagroup
  group_label: "Ifleet"



join: ifleet_drivers {
  view_label: "ifleet_driver_details"
  type: left_outer
  relationship: one_to_one
  sql_on: ${ifleet_applications.userid} = ${ifleet_drivers.userid} ;;
}

}
