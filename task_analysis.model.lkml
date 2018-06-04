connection: "penguin"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: task_analysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: task_analysis_default_datagroup


explore: task {
  always_filter: {
    filters: {
      field: task_detail_date
      value: "2018/05"
    }
  }
  join: oldbury_weather_reading {
    type: left_outer
    sql_on: ${task.task_detail_date} = ${oldbury_weather_reading.recorded_date} ;;
    relationship: many_to_one
  }
}
