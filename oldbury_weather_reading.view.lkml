view: oldbury_weather_reading {
  view_label: "(2) Weather Information"
  sql_table_name: aa_contract_to_cash.oldbury_weather_reading ;;

  dimension_group: recorded {
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

  dimension: recorded_date_key {
    type: string
    primary_key: yes
    sql: ${TABLE}.date ;;
  }


  dimension: events {
    type: string
    sql: case when replace(${TABLE}.events,'"','') = ' ' then 'No Events' else replace(${TABLE}.events,'"','') end  ;;
  }

#  dimension: events_pics {
 #   type: string
 #   sql: '🌁'
#     --case when ${events} = 'Fog' then '🌁'
#           --  when ${events} = 'Rain' then '🌧️'
# ----             when ${events} = '"Rain , Thunderstorm"' then '🌧️⚡️'
# --            when ${events} = '"Fog , Rain"' then '🌁🌧️'
# --             when ${events} = '"Fog , Rain , Thunderstorm"' then '🌁🌧️⚡️'
# --          else '☀️'
# --      end
#     ;;
#   }

  dimension: humidity_avg_percentage {
    group_label: "Humidity"
    type: number
    sql: ${TABLE}.humidity_avg_percentage ;;
  }

  dimension: humidity_high_percentage {
    group_label: "Humidity"
    type: number
    sql: ${TABLE}.humidity_high_percentage ;;
  }

  dimension: humidity_low_percentage {
    group_label: "Humidity"
    type: number
    sql: ${TABLE}.humidity_low_percentage ;;
  }

  dimension: temperature_avg_celsius {
    group_label: "Temperature"
    type: number
    sql: ${TABLE}.temperature_avg_celsius ;;
  }

  dimension: temperature_high_celsius {
    group_label: "Temperature"
    type: number
    sql: ${TABLE}.temperature_high_celsius ;;
  }

  dimension: temperature_low_celsius {
    group_label: "Temperature"
    type: number
    sql: ${TABLE}.temperature_low_celsius ;;
  }

}
