view: task {
  view_label: "(1) Tasks"
  sql_table_name: aa_contract_to_cash.task ;;

  dimension: arrive_to_rss_complete {
    type: number
    sql: ${TABLE}."Arrive To RssComplete" ;;
  }

  dimension: bkdn_seq_no_today {
    hidden: yes
    type: number
    sql: ${TABLE}."Bkdn Seq No Today" ;;
  }

  dimension: bkdn_task_no {
    label: "Breakdown Task Number"
    primary_key: yes
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

  dimension_group: create {
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

  measure: interval_start {
    description: "First day in the interval selected"
    type: date
    #hidden: yes
    sql: min(${task_detail_date});;
  }

  measure: interval_end {
    description: "Last day in the interval selected"
    type: date
    #hidden: yes
    sql: max(${task_detail_date});;
    #sql: concat(datename(day,max(${task_detail_date})),' ',datename(m,max(${task_detail_date})),' ',datename(year,min(${task_detail_date})))  ;;
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

  measure: count_distinct_days {
    type: count_distinct
    sql: ${TABLE}."Task Detail Date" ;;
  }
}
