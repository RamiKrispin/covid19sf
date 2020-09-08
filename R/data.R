#' San Francisco COVID-19 Cases Summarized by Date, Transmission and Case Disposition
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases and deaths by day and transmission type.
#' The transmission data are based on information reported from case interviews, laboratories, and providers.
#' This data may not be immediately available for recently reported cases and
#' data will change to reflect as information becomes available. More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Date-Transmission-and/tvq9-ec9w}{here}
#'
#' @format A data frame with 5 variables.
#' \describe{
#'   \item{specimen_collection_date}{date which case was recorded in YYYY-MM-DD format.}
#'   \item{case_disposition}{The case disposition c("Confirmed", "Death)}
#'   \item{transmission_category}{The case transmission category c("Community", "From Contact", "Unknown")}
#'   \item{case_count}{Daily cases count}
#'   \item{last_updated}{The table last update time in POSIX format}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19
#' @details The dataset contains the daily summary of covid19 cases in San Francisco by transmission
#' and case disposition
#' @examples
#' data(covid19sf_summary)
#'
#' # Case disposition summary
#' table(covid19sf_summary$case_disposition)
#'
#' # Transmission category
#' table(covid19sf_summary$transmission_category)
#'
#' # Summary of case disposition and transmission category
#' table(covid19sf_summary$case_disposition,
#'       covid19sf_summary$transmission_category)
#'
"covid19sf_summary"



#' San Francisco COVID-19 Cases Summarized by Date, Transmission and Case Disposition
#'
#' @description  Count of COVID+ patients admitted to the hospital.
#' Patients who are hospitalized and test positive for COVID-19 may be admitted to an
#' acute care bed (a regular hospital bed), or an intensive care unit (ICU) bed.
#' This data shows the daily total count of COVID+ patients in these two bed types,
#' and the data reflects totals from all San Francisco Hospitals
#'
#' @format A data frame with 5 variables.
#' \describe{
#'   \item{reportdate}{date which case was recorded in YYYY-MM-DD format.}
#'   \item{hospital}{The hospital which patients were admitted, currently it labeled under "All SF Hospitals" }
#'   \item{dphcategory}{The type of hospitalization bed, either an acute care bed (a regular hospital bed), or an intensive care unit (ICU) bed}
#'   \item{covidstatus}{The patient diagnostic, either PUI (Patient Under Investigation) or COVID+ (positive case)}
#'   \item{patientcount}{Daily cases count}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19
#' @details Each record represents how many people were hospitalized on the date recorded in
#' either an ICU bed or acute care bed (shown as Med/Surg under DPHCategory field)
#' @examples
#' data(covid19sf_hospital)
#'
#' head(covid19sf_hospital)
#'
"covid19sf_hospital"

