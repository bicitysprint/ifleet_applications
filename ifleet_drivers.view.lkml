view: ifleet_drivers {
  sql_table_name: CC.IFLEET_DRIVERS ;;

  dimension: aah {
    type: number
    sql: ${TABLE}."AAH" ;;
  }

  dimension: abb {
    type: number
    sql: ${TABLE}."ABB" ;;
  }

  dimension: adr {
    type: number
    sql: ${TABLE}."ADR" ;;
  }

  dimension: alg {
    type: number
    sql: ${TABLE}."ALG" ;;
  }

  dimension: ali {
    type: number
    sql: ${TABLE}."ALI" ;;
  }

  dimension: alv {
    type: number
    sql: ${TABLE}."ALV" ;;
  }

  dimension: approved {
    type: number
    sql: ${TABLE}."APPROVED" ;;
  }

  dimension: associated_assets {
    type: string
    sql: ${TABLE}."ASSOCIATED_ASSETS" ;;
  }

  dimension: bms {
    type: number
    sql: ${TABLE}."BMS" ;;
  }

  dimension: bx {
    type: number
    sql: ${TABLE}."BX" ;;
  }

  dimension: callsign {
    type: string
    sql: ${TABLE}."CALLSIGN" ;;
  }

  dimension: cap {
    type: number
    sql: ${TABLE}."CAP" ;;
  }

  dimension: carrierclass {
    type: string
    sql: ${TABLE}."CARRIERCLASS" ;;
  }

  dimension: citytrak {
    type: number
    sql: ${TABLE}."CITYTRAK" ;;
  }

  dimension: co2 {
    type: string
    sql: ${TABLE}."CO2" ;;
  }

  dimension: colour {
    type: string
    sql: ${TABLE}."COLOUR" ;;
  }

  dimension_group: dob {
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
    sql: ${TABLE}."DOB" ;;
  }

  dimension: dra {
    type: number
    sql: ${TABLE}."DRA" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: engcap {
    type: string
    sql: ${TABLE}."ENGCAP" ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}."FUEL_TYPE" ;;
  }

  dimension: gdp {
    type: number
    sql: ${TABLE}."GDP" ;;
  }

  dimension: ig {
    type: number
    sql: ${TABLE}."IG" ;;
  }

  dimension: im {
    type: number
    sql: ${TABLE}."IM" ;;
  }

  dimension: insurance_type {
    type: string
    sql: ${TABLE}."INSURANCE_TYPE" ;;
  }

  dimension_group: lastvisitdate {
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
    sql: ${TABLE}."LASTVISITDATE" ;;
  }

  dimension: lez {
    type: number
    sql: ${TABLE}."LEZ" ;;
  }

  dimension: lez_group {
    label: "ULEZ_compliant"
    type: string
    sql: case when ${lez} = 1 then 'Yes' else 'No' end ;;

  }

  dimension: livery {
    type: string
    sql: ${TABLE}."LIVERY" ;;
  }

  dimension: med {
    type: number
    sql: ${TABLE}."MED" ;;
  }

  dimension: mob {
    type: string
    sql: ${TABLE}."MOB" ;;
  }

  dimension: mod {
    type: number
    sql: ${TABLE}."MOD" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}."NATIONALITY" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: phx {
    type: number
    sql: ${TABLE}."PHX" ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension: pro {
    type: number
    sql: ${TABLE}."PRO" ;;
  }

  dimension: rad {
    type: number
    sql: ${TABLE}."RAD" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."REFERENCE" ;;
  }

  dimension: reg {
    type: string
    sql: ${TABLE}."REG" ;;
  }

  dimension_group: registerdate {
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
    sql: ${TABLE}."REGISTERDATE" ;;
  }

  dimension: service_centre {
    type: string
    sql: ${TABLE}."SERVICE_CENTRE" ;;
  }

  dimension_group: startdate {
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
    sql: ${TABLE}."STARTDATE" ;;
  }

  dimension: taxclass {
    type: string
    sql: ${TABLE}."TAXCLASS" ;;
  }

  dimension: telnum {
    type: string
    sql: ${TABLE}."TELNUM" ;;
  }

  dimension: updated {
    type: number
    sql: ${TABLE}."UPDATED" ;;
  }

  dimension: ups {
    type: number
    sql: ${TABLE}."UPS" ;;
  }

  dimension: user_role {
    type: string
    sql: ${TABLE}."USER_ROLE" ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}."USERID" ;;
  }

  dimension: vechtype {
    type: string
    sql: ${TABLE}."VECHTYPE" ;;
  }

  dimension: where_did_you_hear_about_us {
    type: string
    sql: ${TABLE}."WHERE_DID_YOU_HEAR_ABOUT_US" ;;
  }

  dimension: wic {
    type: string
    sql: ${TABLE}."WIC" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
