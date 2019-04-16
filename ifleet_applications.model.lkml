connection: "db"

# include all the views
include: "*.view"

datagroup: ifleet_applications_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "10 hour"
}

persist_with: ifleet_applications_default_datagroup


explore: ifleet_applications {}
