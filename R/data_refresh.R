#' Refreshing the covid19sf Pakcage Datasets
#' @description The function enables to keep the package datasets with most recent data available on the package main repository.
#' The main repository is refreshed on a daily basis.
#' @param force A boolean, if set to TRUE will update the package if new data is available automatically
#' @export
#'
covid19sf_refresh <- function(force = FALSE){

  `%>%` <- magrittr::`%>%`

  updates <- FALSE

  reportdate <- NULL

  cat(paste0("\033[4;", 32, "m","Checking for updates for the covid19sf package","\033[0m","\n"))

  # covid19sf_age ----
  cat("covid19sf_age dataset...")

  age_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_age.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                     tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))


  covid19sf_age_old <- covid19sf::covid19sf_age

  if(max(covid19sf_age_old$specimen_collection_date) < max(age_csv$specimen_collection_date) ||
     nrow(covid19sf_age_old) < nrow(age_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }

  # covid19sf_summary ----
  cat("covid19sf_summary dataset...")
  summary_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_summary.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                     tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))

  covid19sf_summary_old <- covid19sf::covid19sf_summary

  if(max(covid19sf_summary_old$specimen_collection_date) < max(summary_csv$specimen_collection_date) || nrow(covid19sf_summary_old) < nrow(summary_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }


  # covid19sf_tests ----
  cat("covid19sf_tests dataset...")
  tests_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_tests.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                     tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))

  covid19sf_tests_old <- covid19sf::covid19sf_tests

  if(max(covid19sf_tests_old$specimen_collection_date) < max(tests_csv$specimen_collection_date) ||
     nrow(covid19sf_tests_old) < nrow(tests_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }





  # covid19sf_hospitalizations ----
  cat("covid19sf_hospitalizations...")

  covid19sf_hospitalizations <- covid19sf::covid19sf_hospitalizations




  hospitalizations_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_hospitalizations.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(reportdate = as.Date(reportdate, tz = "America/Los_Angeles"))




  if(max(covid19sf_hospitalizations$reportdate) < max(hospitalizations_csv$reportdate) ||
     nrow(covid19sf_hospitalizations) < nrow(hospitalizations_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }


  # covid19sf_demo ----
  cat("covid19sf_demo...")

  covid19sf_demo_old <- covid19sf::covid19sf_demo

  demo_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_demo.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                     tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))




  if(max(covid19sf_demo_old$specimen_collection_date) < max(demo_csv$specimen_collection_date) ||
     nrow(covid19sf_demo_old) < nrow(demo_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }

  # covid19sf_housing ----
  cat("covid19sf_housing...")

  covid19sf_housing_old <- covid19sf::covid19sf_housing

  housing_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_housing.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(date_updated = as.Date(date_updated,tz = "America/Los_Angeles"))




  if(max(covid19sf_housing_old$date_updated) < max(housing_csv$date_updated) ||
     nrow(covid19sf_housing_old) < nrow(housing_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }



  # covid19sf_geo ----
  cat("covid19sf_geo...")

  covid19sf_geo_old <- covid19sf::covid19sf_geo

  geo_csv <- sf::st_read("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_geo.geojson",
                         stringsAsFactors = FALSE,
                         quiet = TRUE)




  if(max(as.Date(covid19sf_geo_old$last_updated)) < max(as.Date(geo_csv$last_updated)) ||
     nrow(covid19sf_geo_old) < nrow(geo_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }

  # covid19sf_hospital ----
  cat("covid19sf_hospital...")

  covid19sf_hospital_old <- covid19sf::covid19sf_hospital

  hospital_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_hospital.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(date = as.Date(date, z = "America/Los_Angeles"))

  if(max(covid19sf_hospital_old$date) < max(hospital_csv$date) ||
     nrow(covid19sf_hospital_old) < nrow(hospital_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }

  # covid19sf_gender ----
  cat("covid19sf_gender...")

  covid19sf_gender_old <- covid19sf::covid19sf_gender

  gender_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_gender.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                     tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))

  if(max(covid19sf_gender_old$specimen_collection_date) < max(gender_csv$specimen_collection_date) ||
     nrow(covid19sf_gender_old) > nrow(gender_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }


  # covid19sf_homeless ----
  cat("covid19sf_homeless...")

  covid19sf_homeless_old <- covid19sf::covid19sf_homeless

  homeless_csv <- utils::read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_homeless.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                     tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))

  if(max(covid19sf_homeless_old$specimen_collection_date) < max(homeless_csv$specimen_collection_date) ||
     nrow(covid19sf_homeless_old) < nrow(homeless_csv)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","no updates are available","\033[0m","\n"))
  }


  # Vaccine demographic summary ----
  cat(paste0("\033[4;", 36, "m","covid19sf_vaccine_demo dataset","\033[0m","\n"))
  cat("Checking for updates...\n")

  covid19sf_vaccine_demo_old <- covid19sf::covid19sf_vaccine_demo


  covid19sf_vaccine_demo_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_vaccine_demo.csv", stringsAsFactors = FALSE)
  covid19sf_vaccine_demo_csv$data_as_of <- lubridate::ymd_hms(covid19sf_vaccine_demo_csv$data_as_of)
  covid19sf_vaccine_demo_csv$data_loaded_at <- lubridate::ymd_hms(covid19sf_vaccine_demo_csv$data_loaded_at)
  if(max(covid19sf_vaccine_demo_csv$data_loaded_at) > max(covid19sf_vaccine_demo_old$data_loaded_at)){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
  }


  # Vaccine demographic time series ----
  cat(paste0("\033[4;", 36, "m","covid19sf_vaccine_demo_ts dataset","\033[0m","\n"))
  cat("Checking for updates...\n")

  covid19sf_vaccine_demo_ts_old <- covid19sf::covid19sf_vaccine_demo_ts

  covid19sf_vaccine_demo_ts_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_vaccine_demo_ts.csv", stringsAsFactors = FALSE)
  covid19sf_vaccine_demo_ts_csv$data_as_of <- lubridate::ymd_hms(covid19sf_vaccine_demo_ts_csv$data_as_of)
  covid19sf_vaccine_demo_ts_csv$data_loaded_at <- lubridate::ymd_hms(covid19sf_vaccine_demo_ts_csv$data_loaded_at)

  if(round(as.numeric(max(covid19sf_vaccine_demo_ts_csv$data_loaded_at, na.rm = TRUE))) >
     round(as.numeric(max(covid19sf_vaccine_demo_ts_old$data_loaded_at, na.rm = TRUE)))){
    cat(paste0("\033[0;", 42, "m","updates available","\033[0m","\n"))
    updates <- TRUE
  } else{
    cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
  }

  if(updates){

    if(!force){

      w <- getOption("width")
      msg <- "Updates are available on the covid19sf main repository. Do you want to reinstall the package? N/y"
      spaces <- base::gregexpr(pattern = " ", text = msg)[[1]] %>% as.numeric()
      if(base::nchar(msg) > w){
        for(i in 1:floor(nchar(msg) / w)){
          r <- max(spaces[which(spaces <= w * i)])
          substr(msg, r, r) <- "\n"

        }
      }

      q <- base::tolower(base::readline(cat(msg, "\n")))


    } else if(force){
      q <- "y"
    }

    if(q == "y" || q == "yes"){
      base::tryCatch(
        expr = {
          cat("Updating the covid19sf package...\n")
          devtools::install_github("RamiKrispin/covid19sf",
                                   upgrade = "never",
                                   ref = "master")

          if ("covid19sf" %in% names(utils::sessionInfo()$otherPkgs)) {
            detach(package:covid19sf, unload = TRUE)
            library(covid19sf)
          }
        },
        error = function(e){
          message('Caught an error!')
          print(e)
        },
        warning = function(w){
          message('Caught an warning!')
          print(w)
        }

      )
    } else {
      cat("Aborting package update...\n")
    }



  } else{
    cat("No updates are available\n")
  }

}

