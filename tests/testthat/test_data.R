test_that(desc = "Test the data dimension", {

  expect_equal(base::nrow(covid19sf_hospital) > 3900, TRUE)
  expect_equal(base::ncol(covid19sf_hospital) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_tests) > 650, TRUE)
  expect_equal(base::ncol(covid19sf_tests) == 6, TRUE)

  expect_equal(base::nrow(covid19sf_geo) == 264, TRUE)
  expect_equal(base::ncol(covid19sf_geo) == 8, TRUE)

  expect_equal(base::nrow(covid19sf_hospital) > 3900, TRUE)
  expect_equal(base::ncol(covid19sf_hospital) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_hospitalizations) > 1690, TRUE)
  expect_equal(base::ncol(covid19sf_hospitalizations) == 6, TRUE)

  expect_equal(base::nrow(covid19sf_housing) >= 43, TRUE)
  expect_equal(base::ncol(covid19sf_housing) == 8, TRUE)

  expect_equal(base::nrow(covid19sf_test_loc) >= 34, TRUE)
  expect_equal(base::ncol(covid19sf_test_loc) == 17, TRUE)

})


test_that(desc = "Test dates/times variable", {

  expect_equal(base::class(covid19sf_hospital$date) == "Date", TRUE)
  expect_equal(base::min(covid19sf_hospital$date) == as.Date("2020-04-01"), TRUE)

  expect_equal(base::class(covid19sf_tests$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::min(covid19sf_tests$specimen_collection_date) == as.Date("2020-03-01"), TRUE)

  expect_equal(base::all(c("sf", "data.frame") %in% base::class(covid19sf_geo)), TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_geo$last_updated)), TRUE)

  expect_equal(base::class(covid19sf_hospital$date) == "Date", TRUE)
  expect_equal(base::min(covid19sf_hospital$date) == as.Date("2020-04-01"), TRUE)

  expect_equal(base::class(covid19sf_hospitalizations$reportdate) == "Date", TRUE)
  expect_equal(base::min(covid19sf_hospitalizations$reportdate) == as.Date("2020-03-23"), TRUE)

  expect_equal(base::class(covid19sf_housing$date_updated) == "Date", TRUE)

})


test_that(desc = "Missing values", {

  expect_equal(base::any(base::is.na(covid19sf_hospital$patientcount)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_tests$tests)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$pos)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$pct)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$neg)), FALSE)
  expect_equal(base::any(base::is.na(covid19sf_tests$indeterminate)), FALSE)

  expect_equal(base::length(base::which(base::is.na(covid19sf_geo$count))), 9)

  expect_equal(base::any(base::is.na(covid19sf_hospital$count)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_hospitalizations$patientcount)), FALSE)

})


test_that(desc = "Duplications", {
  expect_equal(base::any(base::duplicated(covid19sf_geo)), FALSE)
  expect_equal(base::any(base::duplicated(covid19sf_hospital)), FALSE)
  expect_equal(base::any(base::duplicated(covid19sf_hospitalizations)), FALSE)
  expect_equal(base::any(base::duplicated(covid19sf_housing)), FALSE)
  expect_equal(base::any(base::duplicated(covid19sf_tests)), FALSE)
  expect_equal(base::any(base::duplicated(covid19sf_test_loc)), FALSE)


})
