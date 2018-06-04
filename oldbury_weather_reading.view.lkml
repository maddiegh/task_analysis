view: oldbury_weather_reading {
  sql_table_name: aa_contract_to_cash.oldbury_weather_reading ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: events {
    type: string
    sql: ${TABLE}.events ;;
  }

  dimension: humidity_avg_percentage {
    type: number
    sql: ${TABLE}.humidity_avg_percentage ;;
  }

  dimension: humidity_high_percentage {
    type: number
    sql: ${TABLE}.humidity_high_percentage ;;
  }

  dimension: humidity_low_percentage {
    type: number
    sql: ${TABLE}.humidity_low_percentage ;;
  }

  dimension: temperature_avg_celsius {
    type: number
    sql: ${TABLE}.temperature_avg_celsius ;;
  }

  dimension: temperature_high_celsius {
    type: number
    sql: ${TABLE}.temperature_high_celsius ;;
  }

  dimension: temperature_low_celsius {
    type: number
    sql: ${TABLE}.temperature_low_celsius ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
