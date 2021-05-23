data_refresh <- function(){
  `%>%` <- magrittr::`%>%`
  # covid19sf_age ----

  cat(paste0("\033[4;", 36, "m","covid19sf_age dataset","\033[0m","\n"))
  cat("Checking for updates...\n")

  age_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_age.csv", stringsAsFactors = FALSE) %>%
    dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                                        tz = "America/Los_Angeles"),
                  last_updated = lubridate::ymd_hms(last_updated,
                                                    tz = "America/Los_Angeles"))


    covid19sf_age <- read.csv("https://data.sfgov.org/resource/sunc-2t3k.csv?$limit=10000", stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                                          tz = "America/Los_Angeles")),
                    last_updated = lubridate::ymd_hms(last_updated_at,
                                                      tz = "America/Los_Angeles")) %>%
      dplyr::select(-last_updated_at)

    if(max(covid19sf_age$specimen_collection_date) > max(age_csv$specimen_collection_date) ||
       nrow(covid19sf_age) > nrow(age_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_age, overwrite = TRUE)
      write.csv(covid19sf_age, "csv/covid19sf_age.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }

    # covid19sf_summary ----

    cat(paste0("\033[4;", 36, "m","covid19sf_summary dataset","\033[0m","\n"))
    cat("Checking for updates...\n")



    covid19sf_summary <- read.csv("https://data.sfgov.org/resource/tvq9-ec9w.csv?$limit=5000",
                                  stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                                          tz = "America/Los_Angeles")),
                    last_updated = lubridate::ymd_hms(last_updated_at,
                                                      tz = "America/Los_Angeles")) %>%
      dplyr::select(-last_updated_at)



    summary_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_summary.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                                          tz = "America/Los_Angeles"),
                    last_updated = lubridate::ymd_hms(last_updated,
                                                      tz = "America/Los_Angeles"))




    if(max(covid19sf_summary$specimen_collection_date) > max(summary_csv$specimen_collection_date) || nrow(covid19sf_summary) > nrow(summary_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_summary, overwrite = TRUE)
      write.csv(covid19sf_summary, "csv/covid19sf_summary.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }

    # covid19sf_hospitalizations ----

    cat(paste0("\033[4;", 36, "m","covid19sf_hospitalizations dataset","\033[0m","\n"))
    cat("Checking for updates...\n")



    covid19sf_hospitalizations <- read.csv("https://data.sfgov.org/resource/nxjg-bhem.csv?$limit=5000", stringsAsFactors = FALSE) %>%
      dplyr::mutate(reportdate = as.Date(lubridate::ymd_hms(reportdate,
                                                            tz = "America/Los_Angeles")))




    hospitalizations_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_hospitalizations.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(reportdate = as.Date(reportdate, tz = "America/Los_Angeles"))




    if(max(covid19sf_hospitalizations$reportdate) > max(hospitalizations_csv$reportdate) ||
       nrow(covid19sf_hospitalizations) > nrow(hospitalizations_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_hospitalizations, overwrite = TRUE)
      write.csv(covid19sf_hospitalizations, "csv/covid19sf_hospitalizations.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }

    # covid19sf_tests ----

    cat(paste0("\033[4;", 36, "m","covid19sf_tests dataset","\033[0m","\n"))
    cat("Checking for updates...\n")

    covid19sf_tests <- read.csv("https://data.sfgov.org/resource/nfpa-mg4g.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                                          tz = "America/Los_Angeles")),
                    last_updated = lubridate::ymd_hms(last_updated_at,
                                                      tz = "America/Los_Angeles")) %>%
      dplyr::select(-last_updated_at)


    tests_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_tests.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                       tz = "America/Los_Angeles"),
                    last_updated = lubridate::ymd_hms(last_updated,
                                                      tz = "America/Los_Angeles"))




    if(max(covid19sf_tests$specimen_collection_date) > max(tests_csv$specimen_collection_date) ||
       nrow(covid19sf_tests) > nrow(tests_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_tests, overwrite = TRUE)
      write.csv(covid19sf_tests, "csv/covid19sf_tests.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }


    # covid19sf_demo ----

    cat(paste0("\033[4;", 36, "m","covid19sf_demo dataset","\033[0m","\n"))
    cat("Checking for updates...\n")

    covid19sf_demo <- read.csv("https://data.sfgov.org/resource/vqqm-nsqg.csv?$limit=5000", stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                                          tz = "America/Los_Angeles")),
                    last_updated = lubridate::ymd_hms(last_updated_at,
                                                      tz = "America/Los_Angeles")) %>%
      dplyr::select(-last_updated_at)


    demo_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_demo.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                       tz = "America/Los_Angeles"),
                    last_updated = lubridate::ymd_hms(last_updated,
                                                      tz = "America/Los_Angeles"))




    if(max(covid19sf_demo$specimen_collection_date) > max(demo_csv$specimen_collection_date) ||
       nrow(covid19sf_demo) > nrow(demo_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_demo, overwrite = TRUE)
      write.csv(covid19sf_demo, "csv/covid19sf_demo.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }

    # covid19sf_housing ----

    cat(paste0("\033[4;", 36, "m","covid19sf_housing dataset","\033[0m","\n"))
    cat("Checking for updates...\n")

    covid19sf_housing <- read.csv("https://data.sfgov.org/resource/qu2c-7bqh.csv?$limit=5000", stringsAsFactors = FALSE) %>%
      dplyr::mutate(date_updated = as.Date(lubridate::ymd_hms(date_updated,
                                                              quiet = TRUE,
                                                              tz = "America/Los_Angeles")))


    housing_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_housing.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(date_updated = as.Date(date_updated,tz = "America/Los_Angeles"))

    if(max(covid19sf_housing$date_updated) > max(housing_csv$date_updated) ||
       nrow(covid19sf_housing) > nrow(housing_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_housing, overwrite = TRUE)
      write.csv(covid19sf_housing, "csv/covid19sf_housing.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }

    # covid19sf_geo ----

    cat(paste0("\033[4;", 36, "m","covid19sf_geo dataset","\033[0m","\n"))
    cat("Checking for updates...\n")

    covid19sf_geo <- sf::st_read("https://data.sfgov.org/resource/tpyr-dvnc.geojson",
                                 stringsAsFactors = FALSE,
                                 quiet = TRUE) %>%
      dplyr::select(area_type, id, count, rate, deaths, acs_population, last_updated = last_updated_at, geometry)

    covid19sf_geo$count <- as.numeric(covid19sf_geo$count)
    covid19sf_geo$rate <- as.numeric(covid19sf_geo$rate)
    covid19sf_geo$deaths <- as.numeric(covid19sf_geo$deaths)
    covid19sf_geo$acs_population <- as.numeric(covid19sf_geo$acs_population)
    covid19sf_geo$id <- as.character(covid19sf_geo$id)
    covid19sf_geo$area_type <- as.character(covid19sf_geo$area_type)

    geo_csv <- sf::st_read("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_geo.geojson",
                           stringsAsFactors = FALSE,
                           quiet = TRUE)


    if(max(as.Date(covid19sf_geo$last_updated)) > max(as.Date(geo_csv$last_updated)) ||
       nrow(covid19sf_geo) > nrow(geo_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_geo, overwrite = TRUE)
      sf::write_sf(covid19sf_geo, "csv/covid19sf_geo.geojson")
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }


    # covid19sf_hospital ----

    cat(paste0("\033[4;", 36, "m","covid19sf_hospital dataset","\033[0m","\n"))
    cat("Checking for updates...\n")

    covid19sf_hospital <- read.csv("https://data.sfgov.org/resource/rh24-ebzg.csv?$limit=5000", stringsAsFactors = FALSE) %>%
      dplyr::mutate(date = as.Date(lubridate::ymd_hms(date,
                                                      tz = "America/Los_Angeles")))

    hospital_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_hospital.csv", stringsAsFactors = FALSE) %>%
      dplyr::mutate(date = as.Date(date, z = "America/Los_Angeles"))




    if(max(covid19sf_hospital$date) > max(hospital_csv$date) ||
       nrow(covid19sf_hospital) > nrow(hospital_csv)){
      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_hospital, overwrite = TRUE)
      write.csv(covid19sf_hospital, "csv/covid19sf_hospital.csv", row.names = FALSE)
    } else{
      cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
    }


    # covid19sf_test_loc ----

    cat(paste0("\033[4;", 36, "m","covid19sf_test_loc dataset","\033[0m","\n"))
    cat("Checking for updates...\n")

    covid19sf_test_loc <- sf::st_read("https://data.sfgov.org/resource/dtit-7gp4.geojson",
                                      stringsAsFactors = FALSE,
                                      quiet = TRUE)  %>%
      dplyr::select(id, medical_home, name,address, phone_number, phone_number_formatted,
                    testing_hours, popup_or_permanent, location_type, eligibility,
                    cta_text, cta_link, sample_collection_method, lab,
                    latitude, longitude, geometry)

      cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

      usethis::use_data(covid19sf_test_loc, overwrite = TRUE)
      sf::write_sf(covid19sf_test_loc, "csv/covid19sf_test_loc.geojson")

      # covid19sf_gender ----

      cat(paste0("\033[4;", 36, "m","covid19sf_gender dataset","\033[0m","\n"))
      cat("Checking for updates...\n")



      covid19sf_gender <- read.csv("https://data.sfgov.org/resource/nhy6-gqam.csv?$limit=5000", stringsAsFactors = FALSE) %>%
        dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                                            tz = "America/Los_Angeles")),
                      last_updated = lubridate::ymd_hms(last_updated_at,
                                                        tz = "America/Los_Angeles")) %>%
        dplyr::select(-last_updated_at)



      gender_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_gender.csv", stringsAsFactors = FALSE) %>%
        dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                         tz = "America/Los_Angeles"),
                      last_updated = lubridate::ymd_hms(last_updated,
                                                        tz = "America/Los_Angeles"))




      if(max(covid19sf_gender$specimen_collection_date) > max(gender_csv$specimen_collection_date) ||
         nrow(covid19sf_gender) > nrow(gender_csv)){
        cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

        usethis::use_data(covid19sf_gender, overwrite = TRUE)
        write.csv(covid19sf_gender, "csv/covid19sf_gender.csv", row.names = FALSE)
      } else{
        cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
      }


      # covid19sf_homeless ----

      cat(paste0("\033[4;", 36, "m","covid19sf_homeless dataset","\033[0m","\n"))
      cat("Checking for updates...\n")



      covid19sf_homeless <- read.csv("https://data.sfgov.org/resource/b45x-2crv.csv?$limit=5000", stringsAsFactors = FALSE) %>%
        dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                                            tz = "America/Los_Angeles")),
                      last_updated = lubridate::ymd_hms(last_updated_at,
                                                        tz = "America/Los_Angeles")) %>%
        dplyr::select(-last_updated_at)



      homeless_csv <- read.csv("https://raw.githubusercontent.com/RamiKrispin/covid19sf/master/csv/covid19sf_homeless.csv", stringsAsFactors = FALSE) %>%
        dplyr::mutate(specimen_collection_date = as.Date(specimen_collection_date,
                                                         tz = "America/Los_Angeles"),
                      last_updated = lubridate::ymd_hms(last_updated,
                                                        tz = "America/Los_Angeles"))




      if(max(covid19sf_homeless$specimen_collection_date) > max(homeless_csv$specimen_collection_date) ||
         nrow(covid19sf_homeless) > nrow(homeless_csv)){
        cat(paste0("\033[0;", 42, "m","Updates are available, saving the changes","\033[0m","\n"))

        usethis::use_data(covid19sf_homeless, overwrite = TRUE)
        write.csv(covid19sf_homeless, "csv/covid19sf_homeless.csv", row.names = FALSE)
      } else{
        cat(paste0("\033[0;", 41, "m","No updates are available","\033[0m","\n"))
      }


    return(invisible(NULL))
}

data_refresh()
