#' San Francisco COVID-19 Cases Summarized by Date, Transmission and Case Disposition
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases and deaths by day and transmission type.
#' The transmission data are based on information reported from case interviews, laboratories, and providers.
#' This data may not be immediately available for recently reported cases and
#' data will change to reflect as information becomes available. More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Date-Transmission-and/tvq9-ec9w}{here}
#'
#' @format A data frame with 5 variables.
#' \describe{
#'   \item{specimen_collection_date}{Date which case was recorded in YYYY-MM-DD format.}
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
#' head(covid19sf_summary)
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



#' San Francisco COVID-19 Hospitalizations
#'
#' @description  Count of COVID+ patients admitted to the hospital.
#' Patients who are hospitalized and test positive for COVID-19 may be admitted to an
#' acute care bed (a regular hospital bed), or an intensive care unit (ICU) bed.
#' This data shows the daily total count of COVID+ patients in these two bed types,
#' and the data reflects totals from all San Francisco Hospitals. More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Hospitalizations/nxjg-bhem}{here}
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
#' @keywords datasets summary COVID19 hospital
#' @details Each record represents how many people were hospitalized on the date recorded in
#' either an ICU bed or acute care bed (shown as Med/Surg under DPHCategory field)
#' @examples
#' data(covid19sf_hospital)
#'
#' head(covid19sf_hospital)

"covid19sf_hospital"

#' San Francisco COVID-19 Tests
#'
#' @description  Case information on COVID-19 Laboratory testing.
#' This data includes a daily count of test results reported,
#' and how many of those were positive, negative, and indeterminate.
#' Reported tests include tests with a positive, negative or indeterminate result.
#' Indeterminate results, which could not conclusively determine whether COVID-19 virus
#' was present, are not included in the calculation of percent positive.
#' Testing for the novel coronavirus is available through commercial, clinical,
#' and hospital laboratories, as well as the SFDPH Public Health Laboratory. More information about the data available \href{https://data.sfgov.org/COVID-19/Covid-19-Tests/nfpa-mg4g}{here}
#'
#' @format A data frame with 7 variables.
#' \describe{
#'   \item{specimen_collection_date}{date which case was recorded in YYYY-MM-DD format.}
#'   \item{tests}{Daily tests count}
#'   \item{pos}{Number of positive cases}
#'   \item{pct}{Percentage of positive cases}
#'   \item{neg}{Number of negative cases}
#'   \item{indeterminate}{Number of indeterminate cases}
#'   \item{last_updated}{The table last update time in POSIX format}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 tests
#' @details A daily COVID-19 testing results report
#' @examples
#' data(covid19sf_tests)
#'
#' head(covid19sf_tests)

"covid19sf_tests"

#' San Francisco COVID-19 Cases Summarized by Date, Transmission and Case Disposition
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases by
#' race and ethnicity. Demographic data are based on information
#' reported from case interviews, laboratories, and providers.
#' This data may not be immediately available for recently reported cases and data will
#' change to reflect as information becomes available.
#' Cumulative counts of 5 or fewer are excluded from the dataset.
#' More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Race-and-Ethnicity/vqqm-nsqg}{here}
#'
#' @format A data frame with 5 variables.
#' \describe{
#'   \item{specimen_collection_date}{Date which case was recorded in YYYY-MM-DD format.}
#'   \item{race_ethnicity}{The cases race/ethnicity}
#'   \item{new_confirmed_cases}{Daily new confirmed cases}
#'   \item{cumulative_confirmed_cases}{Cumulative confirmed cases}
#'   \item{last_updated}{The table last update time in POSIX format}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 race ethnicity demographic
#' @details The dataset contains the daily summary of covid19 cases in San Francisco by race/ethnicity group
#' @examples
#' data(covid19sf_demo)
#'
#' head(covid19sf_demo)
#'
"covid19sf_demo"

#' San Francisco COVID-19 Cases Summarized by Age Group
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases by age group.
#' Demographic and transmission data are based on information reported from case interviews,
#' laboratories, and providers.
#' This data may not be immediately available for recently reported cases and
#' data will change to reflect as information becomes available.
#' Cumulative counts of 5 or fewer are excluded from the dataset.
#' More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Age-Group/sunc-2t3k}{here}
#'
#' @format A data frame with 5 variables.
#' \describe{
#'   \item{specimen_collection_date}{date which case was recorded in YYYY-MM-DD format.}
#'   \item{age_group}{case age group c("under 18", "18-30", "31-40", "41-50", "51-60", "71-80")}
#'   \item{new_confirmed_cases}{Daily new confirmed cases}
#'   \item{cumulative_confirmed_cases}{Cumulative numbero of confirmed cases}
#'   \item{last_updated}{The table last update time in POSIX format}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 age
#' @details The dataset contains the daily summary of covid19 cases in San Francisco by age group
#' @examples
#' data(covid19sf_age)
#'
#' head(covid19sf_age)

"covid19sf_age"


#' San Francisco COVID-19 Alternative Housing Sites
#'
#' @description  This dataset includes aggregate data on the type, status, population served,
#' and individuals placed at each alternative housing site under contract with HSA.
#' More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Alternative-Housing-Sites/qu2c-7bqh}{here}
#'
#' @format A data frame with 8 variables.
#' \describe{
#'   \item{site_id}{Site ID}
#'   \item{status}{The site status, c("Active", "In Preparation")}
#'   \item{facility_type}{The facility type, c("Hotel", "Safe Sleep", "Congregate", "RV") }
#'   \item{site_type}{The site type, c(""SIP: COVID-Negative/Unknown", "I/Q", "SS: COVID-Negative/Unknown", "SIP: Post-COVID") }
#'   \item{units_occupied}{Number of units occupied per site}
#'   \item{total_units}{Total number of units available}
#'   \item{population_covid_status}{The population covid status, c("COVID Negative/Unknown", "COVID Positive", "Post-COVID")}
#'   \item{date_updated}{Date which data was updated in YYYY-MM-DD format.)}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 housing
#' @details The dataset contains a summary of covid19 housing site in San Francisco by site, facility and covid19 status
#' @examples
#' data(covid19sf_housing)
#'
#' head(covid19sf_housing)

"covid19sf_housing"

