#' San Francisco COVID-19 Cases Summarized by Date, Transmission and Case Disposition
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases and deaths by day and transmission type.
#' The transmission data are based on information reported from case interviews, laboratories, and providers.
#' This data may not be immediately available for recently reported cases and
#' data will change to reflect as information becomes available. More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Date-Transmission-and/tvq9-ec9w}{here}
#'
#' @format An object class data.frame with 5 variables
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
#' @format An object class data.frame with 5 variables
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
#' data(covid19sf_hospitalizations)
#'
#' head(covid19sf_hospitalizations)

"covid19sf_hospitalizations"

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
#' @format An object class data.frame with 7 variables
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
#' @format An object class data.frame with 5 variables
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
#' @format An object class data.frame with 5 variables
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
#' @format An object class data.frame with 8 variables
#' \describe{
#'   \item{site_id}{Site ID}
#'   \item{status}{The site status, c("Active", "In Preparation")}
#'   \item{facility_type}{The facility type, c("Hotel", "Safe Sleep", "Congregate", "RV") }
#'   \item{site_type}{The site type, c(""SIP: COVID-Negative/Unknown", "I/Q", "SS: COVID-Negative/Unknown", "SIP: Post-COVID") }
#'   \item{units_occupied}{Number of units occupied per site}
#'   \item{total_units}{Total number of units available}
#'   \item{population_covid_status}{The population covid status, c("COVID Negative/Unknown", "COVID Positive", "Post-COVID")}
#'   \item{date_updated}{Date which data was updated in YYYY-MM-DD format)}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 housing
#' @details The dataset contains a summary of covid19 housing site in San Francisco by site, facility and covid19 status
#' @examples
#' data(covid19sf_housing)
#'
#' head(covid19sf_housing)

"covid19sf_housing"

#' San Francisco COVID-19 Cases and Deaths Summarized by Geography
#'
#' @description  Medical provider confirmed COVID-19 cases and confirmed COVID-19 related deaths
#' in San Francisco, CA aggregated by several different geographic areas and normalized by
#' 2018 American Community Survey (ACS) 5-year estimates for population data to calculate rate per 10,000 residents.
#' More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-and-Deaths-Summarized-by-Geography/tpyr-dvnc}{here}
#'
#' @format An object class sf and data.frame with 8 variables.
#' \describe{
#'   \item{area_type}{Area type, c("ZCTA", "Analysis Neighborhood", "Census Tract", "Citywide")}
#'   \item{id}{area id}
#'   \item{count}{The count of cases in the area}
#'   \item{rate}{The rate of cases in the area, calculated as (count/acs_population) * 10000 which is a rate per 10,000 residents}
#'   \item{deaths}{The number of cases in the area }
#'   \item{acs_population}{The population from the latest 5-year estimates from the American Community Survey (2014-2018))}
#'   \item{last_updated}{Last update of the data in POSIXc format)}
#'   \item{geometry}{The area polygon data)}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 geo map
#' @details The dataset contains a summary of covid19 cases in San Francisco by geographic area
#' @examples
#' data(covid19sf_geo)
#'
#' head(covid19sf_geo)
#'
#' library(sf)
#' # Ploting SF Covid19 counts using base plot function
#' # Plotting by zip code
#' plot(covid19sf_geo[which(covid19sf_geo$area_type == "ZCTA"),
#'                    c("count", "geometry")],
#'       main = "Covid19 Cases by ZIP Code")
#' # Plotting by neighborhood
#' plot(covid19sf_geo[which(covid19sf_geo$area_type ==
#'                          "Analysis Neighborhood"),
#'                    c("count", "geometry")],
#'      main = "Covid19 Cases by Neighborhood")
#' #Plotting by census tract
#' plot(covid19sf_geo[which(covid19sf_geo$area_type == "Census Tract"),
#'                    c("count", "geometry")],
#'      main = "Covid19 Cases by Census Tract")
#' plot(covid19sf_geo[which(covid19sf_geo$area_type == "Census Tract"),
#'                    c("rate", "geometry")],
#'      main = "Covid19 Cases Rate per 10,000 by Census Tract")


"covid19sf_geo"


#' San Francisco COVID-19 Vaccines Given to San Franciscans by Geography
#'
#' @description  This dataset represents the COVID-19 vaccinations given to SF residents summarized
#' by the geographic region of their residential address. All vaccines given to SF residents are
#' included, no matter where the vaccination took place (the vaccine may have been administered
#' in San Francisco or outside of San Francisco). Data provides counts for people who have received
#' at least one dose and people who have completed a vaccine series. A vaccine series is complete
#' after an individual has received both doses of a two-dose vaccine or one dose of a one-dose vaccine.
#' More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Vaccines-Given-to-San-Franciscans-by-Geog/4e7h-hjt4}{here}
#'
#' @format An object class sf and data.frame with 8 variables.
#' \describe{
#'   \item{id}{area id}
#'   \item{area_type}{Area type, c("Analysis Neighborhood", "Summary")}
#'   \item{count_vaccinated_by_dph}{Count of residents in the given geographic region who have received at least one dose administered by DPH}
#'   \item{count_vaccinated}{Count of residents in the given geographic region who have received at least one dose regardless of who administered the vaccine}
#'   \item{count_series_completed}{Count of residents in the given geographic region who have completed a vaccine series}
#'   \item{acs_population}{2019 5-year American Community Survey population estimate for the given geographic region (all ages)}
#'   \item{percent_pop_series_completed}{The total count of population that have complated a vaccine series by population estimate (acs_population)}
#'   \item{last_updated}{Last update of the data in POSIXc format)}
#'   \item{geometry}{The area polygon data)}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 geo map vaccine
#' @details The dataset contains a summary of covid19 vaccination in San Francisco by neighborhood
#' @examples
#' data(covid19sf_vaccine_geo)
#'
#' head(covid19sf_vaccine_geo)
#'
#' library(sf)
#' library(dplyr)
#'
#' df <- covid19sf_vaccine_geo %>% filter(area_type == "Analysis Neighborhood")
#'
#' # Ploting SF vaccine counts using base plot function
#' plot(df[, c("count_series_completed", "geometry")],
#'      main = "San Francisco - Fully Vaccineted Population")
"covid19sf_vaccine_geo"





#' San Francisco COVID-19 Hospital Capacity
#'
#' @description  Data on daily hospital bed use and available capacity at San Francisco
#' acute care hospitals from April 2020 onward.
#' Long Term Care facilities (like Laguna Honda and Kentfield) are not included
#' in this data as acute care patients cannot be admitted to these facilities.
#' More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Hospital-Capacity/rh24-ebzg}{here}
#'
#' @format An object class data.frame with 5 variables
#' \describe{
#'   \item{hospital}{The hospital name, currently a single categorical variable, c("All SF Acute Hospitals")}
#'   \item{date}{Date which the data was recorded in YYYY-MM-DD format}
#'   \item{bed_type}{The bed type, c("Intensive Care Surge", "Acute Care", "Acute Care Surge", "Intensive Care") }
#'   \item{status}{The bed category status, c("Available", "COVID-19 (Confirmed & Suspected)", "Other Patients")}
#'   \item{count}{The bed count}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 hospital bed
#' @details The dataset contains a summary of San Francisco hospital bed status
#' @examples
#' data(covid19sf_hospital)
#'
#' head(covid19sf_hospital)

"covid19sf_hospital"

#' San Francisco COVID-19 Cases Summarized by Gender
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases by gender.
#' Demographic and transmission data are based on information reported from case interviews,
#' laboratories, and providers. This data may not be immediately available for recently reported
#' cases and data will change to reflect as information becomes available.
#' Cumulative counts of 5 or fewer are excluded from the dataset.
#'  More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Gender/nhy6-gqam}{here}
#'
#' @format An object class data.frame with 5 variables
#' \describe{
#'   \item{specimen_collection_date}{Date which case was recorded in YYYY-MM-DD format.}
#'   \item{gender}{The cases gender c( "Female", "Male", "Trans Female", "Unknown")}
#'   \item{new_confirmed_cases}{Total cases confirmed cases per date and gender category}
#'   \item{cumulative_confirmed_cases}{Cumulative confirmed cases by category }
#'   \item{last_updated}{The table last update time in POSIX format}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 gender
#' @details The dataset contains the daily summary of covid19 cases in San Francisco by gender
#' @examples
#' data(covid19sf_gender)
#'
#' head(covid19sf_gender)
#
"covid19sf_gender"

#' San Francisco COVID-19 Cases Summarized by Homelessness Status
#'
#' @description  This dataset represents the COVID-19 positive confirmed cases by homelessness.
#'  Demographic and transmission data are based on information reported from case
#'  interviews, laboratories, and providers.
#'  This data may not be immediately available for recently reported cases
#'  and data will change to reflect as information becomes available.
#'  Cumulative counts of 5 or fewer are excluded from the dataset.
#'  More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Homelessness-Status/b45x-2crv}{here}
#'
#' @format An object class data.frame with 5 variables
#' \describe{
#'   \item{specimen_collection_date}{Date which case was recorded in YYYY-MM-DD format.}
#'   \item{homelessness_status}{The homelessness status, a signle category variable c("Homeless")}
#'   \item{new_confirmed_cases}{Total cases confirmed cases per date}
#'   \item{cumulative_confirmed_cases}{Cumulative confirmed cases}
#'   \item{last_updated}{The table last update time in POSIX format}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 homeless
#' @details The dataset contains the daily summary of covid19 cases in San Francisco by homelessness status
#' @examples
#' data(covid19sf_homeless)
#'
#' head(covid19sf_homeless)
#
"covid19sf_homeless"

#' San Francisco COVID-19 Testing Locations
#'
#' @description  A list of testing locations including address and coordinates for mapping.
#'  More information about the data available \href{https://data.sfgov.org/COVID-19/COVID-19-Testing-Locations/dtit-7gp4}{here}
#'
#' @format An object class sf and data.frame with 17 variables
#' \describe{
#'   \item{id}{Location ID}
#'   \item{medical_home}{Medical home}
#'   \item{name}{The medical name}
#'   \item{address}{The medical address}
#'   \item{phone_number}{The medical phone number}
#'   \item{phone_number_formatted}{The medical phone number formatted}
#'   \item{testing_hours}{The medical testing hours}
#'   \item{popup_or_permanent}{The medical testing type, c("Permanent", "Pop-Up" )}
#'   \item{location_type}{The medical location type, c("Private", "Public" )}
#'   \item{eligibility}{Eligibility information for accessing testing at this location}
#'   \item{cta_text}{The call to action used for the web map}
#'   \item{cta_link}{The call to action link for the button on the web map}
#'   \item{sample_collection_method}{The method for collecting samples at the lab}
#'   \item{lap}{The lab name}
#'   \item{latitude}{The medical latitude point}
#'   \item{longitude}{The medical longitude point}
#'   \item{geometry}{The medical geometry details}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 testing medical
#' @details The dataset contains the San Francisco testing location information
#' @examples
#' data(covid19sf_test_loc)
#'
#' head(covid19sf_test_loc)
#'

"covid19sf_test_loc"


#' COVID-19 Vaccine Doses Given to San Franciscans by Demographics
#'
#' @description  This dataset represents doses of COVID-19 vaccine administered in
#' California to residents of San Francisco. The data is broken down by multiple
#' demographic slices. The three dose types are counted separately, i.e.
#' (1) first doses administered as a part of a two-dose vaccination,
#' (2) second doses administered as part of a two-dose vaccination, and
#' (3) single-dose vaccines administered. \href{https://data.sfgov.org/COVID-19/COVID-19-Vaccine-Doses-Given-to-San-Franciscans-by/wv2h-rqwk}{here}
#'
#' @format An object class data.frame with 15 variables
#' \describe{
#'   \item{overall_segment}{Segment (universe) of analysis. Unique combination of
#'   administering_provider_type, age_group, and demographic_group. Filter to a single
#'   option to derive meaningful totals.}
#'   \item{administering_provider_type}{Providers included in a given overall_segment. Two possible values: 'All' (including SF DPH) or 'DPH Only'}
#'   \item{age_group}{Age range included in a given overall_segment}
#'   \item{demographic_group}{Type of demographic group included in a given overall_segment (e.g. Age, Race/Ethnicity)}
#'   \item{demographic_subgroup}{Specific demographic group counted in a given record (e.g. 16-24, Asian)}
#'   \item{demographic_subgroup_sort_order}{Numeric sort order for all demographic_subgroups. Convenient for maintaining consistent ordering across multiple data visualizations.}
#'   \item{total_1st_doses}{Total number of first doses administered}
#'   \item{total_2nd_doses}{Total number of second doses administered}
#'   \item{total_single_doses}{Total number of single dose vaccines administered}
#'   \item{total_recipients}{Total number of unique vaccine recipients}
#'   \item{total_series_completed}{Total number of individuals fully vaccinated (those having received the second dose of a two-dose vaccine or one dose of a single-dose vaccine)}
#'   \item{subgroup_population}{2018 5-year American Community Survey population estimates for given DEMOGRAPHIC_SUBGROUP}
#'   \item{age_group_population}{2018 5-year American Community Survey population estimates for overall AGE_GROUP}
#'   \item{data_as_of}{Timestamp for last update date in source system}
#'   \item{data_loaded_at}{Timestamp when the record (row) was most recently updated in Socrata}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets summary COVID19 vaccine
#' @details The dataset contains a summary of COVID-19 vaccine doses given to San Franciscans by demographics
#' @examples
#' data(covid19sf_vaccine_demo)
#'
#' head(covid19sf_vaccine_demo)

"covid19sf_vaccine_demo"

#' COVID-19 Vaccine Doses Given to San Franciscans by Demographics Over Time
#'
#' @description  This dataset represents doses of COVID-19 vaccine administered in
#' California to San Francisco residents over time. The data is broken down by multiple
#' demographic slices. The three dose types are counted separately, i.e.
#' (1) first doses administered as a part of a two-dose vaccination,
#' (2) second doses administered as part of a two-dose vaccination, and
#' (3) single-dose vaccines administered. \href{https://data.sfgov.org/COVID-19/COVID-19-Vaccine-Doses-Given-to-San-Franciscans-by/xjh5-h442}{here}
#'
#' @format An object class data.frame with 21 variables
#' \describe{
#'   \item{date_administered}{Date vaccination administered}
#'   \item{overall_segment}{Segment (universe) of analysis.
#'   Unique combination of administering_provider_type, age_group, and demographic_group.
#'   Filter to a single option to derive meaningful totals.}
#'   \item{administering_provider_type}{Providers included in a given overall_segment. Two possible values: 'All' (including SF DPH) or 'DPH Only'}
#'   \item{age_group}{Age range included in a given overall_segment}
#'   \item{demographic_group}{Type of demographic group included in a given overall_segment (e.g. Age, Race/Ethnicity)}
#'   \item{demographic_subgroup}{Specific demographic group counted in a given record (e.g. 16-24, Asian)}
#'   \item{demographic_subgroup_sort_order}{Numeric sort order for all demographic_subgroup. Convenient for maintaining consistent ordering across multiple data visualizations.}
#'   \item{new_1st_doses}{Count of 1st doses administered for vaccines that take two doses to complete}
#'   \item{new_2nd_doses}{Count of 2nd doses administered for vaccines that take two doses to complete}
#'   \item{new_single_doses}{Count of doses administered for vaccines that take one dose to complete}
#'   \item{new_series_completed}{Count of individuals newly fully vaccinated on a given day (given the 2nd dose of a two-dose vaccine or one dose of a single dose vaccine)}
#'   \item{new_recipients}{Count of individuals vaccinated (with any dose) for the first time according to CA's records}
#'   \item{cumulative_1st_doses}{Cumulative total of 1st doses administered for vaccines that take two doses to complete}
#'   \item{cumulative_2nd_doses}{Cumulative total of 2nd doses administered for vaccines that take two doses to complete}
#'   \item{cumulative_single_doses}{Cumulative total of doses administered for vaccines that take one dose to complete}
#'   \item{cumulative_series_completed}{Cumulative total individuals fully vaccinated (given the 2nd dose of a two-dose vaccine or one dose of a single dose vaccine)}
#'   \item{cumulative_recipients}{Cumulative total individuals vaccinated (with any dose) according to CA's records}
#'   \item{subgroup_population}{American Community Survey population estimates for given demographic_subgroup}
#'   \item{age_group_population}{American Community Survey population estimates for overall age_group}
#'   \item{data_as_of}{Timestamp for last update date in source system}
#'   \item{data_loaded_at}{Timestamp when the record (row) was most recently updated here in the Open Data Portal}
#'   }
#' @source San Francisco, Department of Public Health - Population Health Division through San Francisco Opne Data protal \href{https://datasf.org/opendata/}{website}.
#' @keywords datasets time series COVID19 vaccine
#' @details The dataset contains a time series of COVID-19 vaccine doses given to San Franciscans by demographics
#' @examples
#' data(covid19sf_vaccine_demo_ts)
#'
#' head(covid19sf_vaccine_demo_ts)

"covid19sf_vaccine_demo_ts"
