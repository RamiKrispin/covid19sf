# https://data.sfgov.org/browse?category=COVID-19&limitTo=datasets&page=1

# COVID-19 Cases Summarized by Date, Transmission and Case Disposition
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Date-Transmission-and/tvq9-ec9w


`%>%` <- magrittr::`%>%`
covid19sf_summary <- read.csv("https://data.sfgov.org/resource/tvq9-ec9w.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles")),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(covid19sf_summary)
tail(covid19sf_summary)
str(covid19sf_summary)
nrow(covid19sf_summary)
usethis::use_data(covid19sf_summary, overwrite = TRUE)
write.csv(covid19sf_summary, "csv/covid19sf_summary.csv", row.names = FALSE)

# COVID-19 Hospitalizations
# https://data.sfgov.org/COVID-19/COVID-19-Hospitalizations/nxjg-bhem
covid19sf_hospitalizations <- read.csv("https://data.sfgov.org/resource/nxjg-bhem.csv", stringsAsFactors = FALSE) %>%
dplyr::mutate(reportdate = as.Date(lubridate::ymd_hms(reportdate,
                                                            tz = "America/Los_Angeles")))


table(covid19sf_hospitalizations$hospital)
table(covid19sf_hospitalizations$dphcategory)
table(covid19sf_hospitalizations$covidstatus)

table(covid19sf_hospitalizations$dphcategory, covid19sf_hospitalizations$covidstatus)

head(covid19sf_hospitalizations)
tail(covid19sf_hospitalizations)

usethis::use_data(covid19sf_hospitalizations, overwrite = TRUE)
write.csv(covid19sf_hospitalizations, "csv/covid19sf_hospitalizations.csv", row.names = FALSE)


# Covid-19 Tests
# https://data.sfgov.org/COVID-19/Covid-19-Tests/nfpa-mg4g

covid19sf_tests <- read.csv("https://data.sfgov.org/resource/nfpa-mg4g.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles")),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)
head(covid19sf_tests)
tail(covid19sf_tests)
str(covid19sf_tests)

usethis::use_data(covid19sf_tests, overwrite = TRUE)
write.csv(covid19sf_tests, "csv/covid19sf_tests.csv", row.names = FALSE)

# COVID-19 Cases Summarized by Race and Ethnicity
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Race-and-Ethnicity/vqqm-nsqg
covid19sf_demo <- read.csv("https://data.sfgov.org/resource/vqqm-nsqg.csv?$limit=2000", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles")),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(covid19sf_demo)
tail(covid19sf_demo)
table(covid19sf_demo$race_ethnicity)
nrow(covid19sf_demo)

usethis::use_data(covid19sf_demo, overwrite = TRUE)
write.csv(covid19sf_demo, "csv/covid19sf_demo.csv", row.names = FALSE)
# COVID-19 Cases Summarized by Age Group
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Age-Group/sunc-2t3k

covid19sf_age <- read.csv("https://data.sfgov.org/resource/sunc-2t3k.csv?$limit=2000", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles")),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(covid19sf_age)
nrow(covid19sf_age)
usethis::use_data(covid19sf_age, overwrite = TRUE)
write.csv(covid19sf_age, "csv/covid19sf_age.csv", row.names = FALSE)
# COVID-19 Alternative Housing Sites
# https://data.sfgov.org/COVID-19/COVID-19-Alternative-Housing-Sites/qu2c-7bqh



covid19sf_housing <- read.csv("https://data.sfgov.org/resource/qu2c-7bqh.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(date_updated = as.Date(lubridate::ymd_hms(date_updated,
                                                  tz = "America/Los_Angeles")))

head(covid19sf_housing)
nrow(covid19sf_housing)
usethis::use_data(covid19sf_housing, overwrite = TRUE)
write.csv(covid19sf_housing, "csv/covid19sf_housing.csv", row.names = FALSE)
# COVID-19 Cases and Deaths Summarized by Geography
# https://data.sfgov.org/COVID-19/COVID-19-Cases-and-Deaths-Summarized-by-Geography/tpyr-dvnc


covid19sf_geo <- sf::st_read("https://data.sfgov.org/resource/tpyr-dvnc.geojson") %>%
  dplyr::select(area_type, id, count, rate, deaths, acs_population, last_updated = last_updated_at, geometry)
str(covid19sf_geo)
covid19sf_geo$count <- as.numeric(covid19sf_geo$count)
covid19sf_geo$rate <- as.numeric(covid19sf_geo$rate)
covid19sf_geo$deaths <- as.numeric(covid19sf_geo$deaths)
covid19sf_geo$acs_population <- as.numeric(covid19sf_geo$acs_population)
covid19sf_geo$id <- as.character(covid19sf_geo$id)
covid19sf_geo$area_type <- as.character(covid19sf_geo$area_type)
head(covid19sf_geo)
mapview::mapview(covid19sf_geo, zcol = "count",legend = TRUE)
plot(covid19sf_geo[, c("count", "geometry")])
usethis::use_data(covid19sf_geo, overwrite = TRUE)
write.csv(covid19sf_geo, "csv/covid19sf_geo.csv", row.names = FALSE)


# COVID-19 Hospital Capacity
# https://data.sfgov.org/COVID-19/COVID-19-Hospital-Capacity/rh24-ebzg


covid19sf_hospital <- read.csv("https://data.sfgov.org/resource/rh24-ebzg.csv?$limit=2000", stringsAsFactors = FALSE) %>%
  dplyr::mutate(date = as.Date(as.Date(lubridate::ymd_hms(date,
                                                              tz = "America/Los_Angeles"))))

head(covid19sf_hospital)
tail(covid19sf_hospital)

usethis::use_data(covid19sf_hospital, overwrite = TRUE)
write.csv(covid19sf_hospital, "csv/covid19sf_hospital.csv", row.names = FALSE)
# COVID-19 Testing Locations
# https://data.sfgov.org/COVID-19/COVID-19-Testing-Locations/dtit-7gp4
covid19sf_test_loc <- sf::st_read("https://data.sfgov.org/resource/dtit-7gp4.geojson",
                                  stringsAsFactors = FALSE)  %>%
  dplyr::select(id, medical_home, name,address, phone_number, phone_number_formatted,
                testing_hours, popup_or_permanent, location_type, eligibility,
                cta_text, cta_link, sample_collection_method, lab,
                latitude, longitude, geometry)


mapview::mapview(covid19sf_test_loc, zcol = "name", legend = FALSE)

head(covid19sf_test_loc)
View(covid19sf_test_loc)


usethis::use_data(covid19sf_test_loc, overwrite = TRUE)
write.csv(covid19sf_test_loc, "csv/covid19sf_test_loc.csv", row.names = FALSE)

# COVID-19 Cases Summarized by Gender
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Gender/nhy6-gqam

covid19sf_gender <- read.csv("https://data.sfgov.org/resource/nhy6-gqam.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles")),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(covid19sf_gender)
nrow(covid19sf_gender)

usethis::use_data(covid19sf_gender, overwrite = TRUE)
write.csv(covid19sf_gender, "csv/covid19sf_gender.csv", row.names = FALSE)

# COVID-19 Cases Summarized by Homelessness Status
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Homelessness-Status/b45x-2crv

covid19sf_homeless <- read.csv("https://data.sfgov.org/resource/b45x-2crv.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = as.Date(lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles")),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(covid19sf_homeless)

usethis::use_data(covid19sf_homeless, overwrite = TRUE)
write.csv(covid19sf_homeless, "csv/covid19sf_homeless.csv", row.names = FALSE)
