view: task {
  sql_table_name: aa_contract_to_cash.task ;;

  dimension: arrive_to_rss_complete {
    type: number
    sql: ${TABLE}."Arrive To RssComplete" ;;
  }

  dimension: bkdn_seq_no_today {
    type: number
    sql: ${TABLE}."Bkdn Seq No Today" ;;
  }

  dimension: bkdn_task_no {
    type: number
    sql: ${TABLE}."Bkdn Task No" ;;
  }

  dimension: completion_description {
    type: string
    sql: ${TABLE}."Completion Description" ;;
  }

  dimension: component_description {
    type: string
    sql: ${TABLE}."Component Description" ;;
  }

  dimension: customer_group_name {
    type: string
    sql: ${TABLE}."Customer Group Name" ;;
  }

  dimension: fault_description {
    type: string
    sql: ${TABLE}."Fault Description" ;;
  }

  dimension: initial_diagnosed_fault_description {
    type: string
    sql: ${TABLE}."Initial Diagnosed Fault Description" ;;
  }

  dimension: patrol_name {
    type: string
    sql: ${TABLE}."Patrol Name" ;;
  }

  dimension: recovery_distance {
    type: number
    sql: ${TABLE}."Recovery Distance" ;;
  }

  dimension_group: recovery_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Recovery Start Time" ;;
  }

  dimension_group: task_acknowledge {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Task Acknowledge Time" ;;
  }

  dimension_group: task_arrival {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Task Arrival Time" ;;
  }

  dimension_group: task_completion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Task Completion Time" ;;
  }

  dimension_group: task_detail {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Task Detail Date" ;;
  }

  dimension_group: task_detail {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Task Detail Time" ;;
  }

  dimension: task_vehicle_make {
    type: string
    sql: ${TABLE}."Task Vehicle Make" ;;
  }

  dimension: task_vehicle_model {
    type: string
    sql: ${TABLE}."Task Vehicle Model" ;;
  }

  measure: count {
    type: count
    drill_fields: [patrol_name, customer_group_name]
  }
}
