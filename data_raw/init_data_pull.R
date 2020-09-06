# COVID-19 Cases Summarized by Date, Transmission and Case Disposition
# https://data.sfgov.org/COVID-19/COVID-19-Cases-Summarized-by-Date-Transmission-and/tvq9-ec9w


`%>%` <- magrittr::`%>%`
df <- read.csv("https://data.sfgov.org/resource/tvq9-ec9w.csv", stringsAsFactors = FALSE) %>%
  dplyr::mutate(specimen_collection_date = lubridate::ymd_hms(specimen_collection_date,
                                                              tz = "America/Los_Angeles"),
                last_updated = lubridate::ymd_hms(last_updated_at,
                                                  tz = "America/Los_Angeles")) %>%
  dplyr::select(-last_updated_at)

head(df)
str(df)

# COVID-19 Hospitalizations
# https://data.sfgov.org/COVID-19/COVID-19-Hospitalizations/nxjg-bhem
df2 <- read.csv("https://data.sfgov.org/resource/nxjg-bhem.csv", stringsAsFactors = FALSE) %>%
dplyr::mutate(reportdate = lubridate::ymd_hms(reportdate,
                                                            tz = "America/Los_Angeles"))


table(df2$hospital)
table(df2$dphcategory)
table(df2$covidstatus)

head(df2)
