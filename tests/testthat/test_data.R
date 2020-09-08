test_that(desc = "Test the data dimension", {
  expect_equal(base::nrow(covid19sf_summary) > 537, TRUE)
  expect_equal(base::ncol(covid19sf_summary) == 5, TRUE)

  expect_equal(base::nrow(covid19sf_hospital) > 667, TRUE)
  expect_equal(base::ncol(covid19sf_hospital) == 5, TRUE)

})


test_that(desc = "Test dates/times variable", {
  expect_equal(base::class(covid19sf_summary$specimen_collection_date) == "Date", TRUE)
  expect_equal(base::all(c("POSIXct", "POSIXt") %in% base::class(covid19sf_summary$last_updated)), TRUE)
  expect_equal(base::min(covid19sf_summary$specimen_collection_date) == as.Date("2020-03-03"), TRUE)

  expect_equal(base::class(covid19sf_hospital$reportdate) == "Date", TRUE)
  expect_equal(base::min(covid19sf_hospital$reportdate) == as.Date("2020-03-23"), TRUE)

})


test_that(desc = "Missing values", {
  expect_equal(base::any(base::is.na(covid19sf_summary$case_count)), FALSE)

  expect_equal(base::any(base::is.na(covid19sf_hospital$patientcount)), FALSE)
})
