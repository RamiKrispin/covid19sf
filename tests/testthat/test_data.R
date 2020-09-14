test_that(desc = "Test the data dimension", {
  expect_equal(base::nrow(covid19sf_summary) > 537, TRUE)
  expect_equal(base::ncol(covid19sf_summary) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_hospital) > 1230, TRUE)
  expect_equal(base::ncol(covid19sf_hospital) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_tests) > 190, TRUE)
  expect_equal(base::ncol(covid19sf_tests) == 7, TRUE)

  expect_equal(base::nrow(covid19sf_demo) > 1507, TRUE)
  expect_equal(base::ncol(covid19sf_demo) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_age) > 1430, TRUE)
  expect_equal(base::ncol(covid19sf_age) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_gender) > 617, TRUE)
  expect_equal(base::ncol(covid19sf_gender) == 5, TRUE)

})


test_that(desc = "Test dates/times variable", {
  expect_equal(base::class(covid19sf_summary$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_summary$last_updated)), TRUE)
  expect_equal(base::min(covid19sf_summary$specimen_collection_date) == as.Date("2020-03-03"), TRUE)

  expect_equal(base::class(covid19sf_hospital$date) == "Date", TRUE)
  expect_equal(base::min(covid19sf_hospital$date) == as.Date("2020-04-01"), TRUE)

  expect_equal(base::class(covid19sf_tests$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_tests$last_updated)), TRUE)
  expect_equal(base::min(covid19sf_tests$specimen_collection_date) == as.Date("2020-02-28"), TRUE)

  expect_equal(base::class(covid19sf_demo$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_demo$last_updated)), TRUE)
  expect_equal(base::min(covid19sf_demo$specimen_collection_date) == as.Date("2020-03-05"), TRUE)

  expect_equal(base::class(covid19sf_age$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_age$last_updated)), TRUE)
  expect_equal(base::min(covid19sf_age$specimen_collection_date) == as.Date("2020-03-07"), TRUE)

  expect_equal(base::class(covid19sf_gender$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_gender$last_updated)), TRUE)
  expect_equal(base::min(covid19sf_gender$specimen_collection_date) == as.Date("2020-03-07"), TRUE)

})


test_that(desc = "Missing values", {
  expect_equal(base::any(base::is.na(covid19sf_summary$case_count)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_hospital$patientcount)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_tests$tests)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$pos)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$pct)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$neg)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$indeterminate)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_demo$new_confirmed_cases)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_demo$cumulative_confirmed_cases)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_age$new_confirmed_cases)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_age$cumulative_confirmed_cases)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_gender$new_confirmed_cases)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_gender$cumulative_confirmed_cases)), FALSE)

})
