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
df2 <- read.csv("https://data.sfgov.org/resource/nxjg-bhem.csv", stringsAsFactors = FALSE) %>%
dplyr::mutate(reportdate = lubridate::ymd_hms(reportdate,
                                                            tz = "America/Los_Angeles"))


table(df2$hospital)
table(df2$dphcategory)
table(df2$covidstatus)

head(df2)

# Covid-19 Tests
# https://data.sfgov.org/COVID-19/Covid-19-Tests/nfpa-mg4g

df3 <- read.csv("https://data.sfgov.org/resource/nfpa-mg4g.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles"),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)
head(df3)
tail(df3)

# COVID-19 Cases Summarized by Race and Ethnicity
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Race-and-Ethnicity/vqqm-nsqg
df4 <- read.csv("https://data.sfgov.org/resource/vqqm-nsqg.csv?$limit=2000", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles"),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(df4)
tail(df4)
table(df4$race_ethnicity)


# COVID-19 Cases Summarized by Age Group
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Age-Group/sunc-2t3k

df5 <- read.csv("https://data.sfgov.org/resource/sunc-2t3k.csv?$limit=2000", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles"),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(df5)
nrow(df5)

# COVID-19 Alternative Housing Sites
# https://data.sfgov.org/COVID-19/COVID-19-Alternative-Housing-Sites/qu2c-7bqh



df6 <- read.csv("https://data.sfgov.org/resource/qu2c-7bqh.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(date_updated = lubridate::ymd_hms(date_updated,
                                                  tz = "America/Los_Angeles"))

head(df6)
nrow(df6)

# COVID-19 Cases and Deaths Summarized by Geography
# https://data.sfgov.org/COVID-19/COVID-19-Cases-and-Deaths-Summarized-by-Geography/tpyr-dvnc



df7 <- read.csv("https://data.sfgov.org/resource/tpyr-dvnc.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(df7)

# COVID-19 Hospital Capacity
# https://data.sfgov.org/COVID-19/COVID-19-Hospital-Capacity/rh24-ebzg


df8 <- read.csv("https://data.sfgov.org/resource/rh24-ebzg.csv?$limit=2000", stringsAsFactors = FALSE) %>%
  dplyr::mutate(date = as.Date(lubridate::ymd_hms(date,
                                                              tz = "America/Los_Angeles")))

head(df8)
tail(df8)

# COVID-19 Testing Locations
# https://data.sfgov.org/COVID-19/COVID-19-Testing-Locations/dtit-7gp4

df9 <- read.csv("https://data.sfgov.org/resource/dtit-7gp4.csv", stringsAsFactors = FALSE)

head(df9)

# COVID-19 Cases Summarized by Gender
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Gender/nhy6-gqam

df10 <- read.csv("https://data.sfgov.org/resource/nhy6-gqam.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles"),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(df10)

# COVID-19 Cases Summarized by Homelessness Status
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Homelessness-Status/b45x-2crv

df11 <- read.csv("https://data.sfgov.org/resource/b45x-2crv.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles"),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(df11)



https://data.sfgov.org/resource/b45x-2crv.csv
