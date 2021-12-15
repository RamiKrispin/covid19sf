
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid19sf

<!-- badges: start -->

[![build](https://github.com/RamiKrispin/covid19sf/workflows/build/badge.svg)](https://github.com/RamiKrispin/covid19sf/actions)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/covid19sf)](https://cran.r-project.org/package=covid19sf)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub
commit](https://img.shields.io/github/last-commit/RamiKrispin/covid19sf)](https://github.com/RamiKrispin/covid19sf/commit/master)
<!-- badges: end -->

The covid19sf package provides a daily summary of the covid19 cases in
San Francisco. The package includes the following datasets:

-   `covid19sf_age` - Cases summarized by age group
-   `covid19sf_demo` - Cases summarized by date, transmission and case
    disposition
-   `covid19sf_gender` - Confirmed cases summarized by gender
-   `covid19sf_geo` - Confirmed cases and deaths summarized by geography
-   `covid19sf_homeless` - Confirmed cases by homelessness
-   `covid19sf_hospital` - Hospital capacity data
-   `covid19sf_hospitalizations` - Hospitalizations data
-   `covid19sf_housing` - Alternative housing sites
-   `covid19sf_summary` - Cases summarized by date, transmission and
    case disposition
-   `covid19sf_test_loc` - Testing locations
-   `covid19sf_tests` - Daily number of tests
-   `covid19sf_vaccine_demo` - Summary of vaccine doses given to San
    Franciscans by demographics groups (age and race)
-   `covid19sf_vaccine_demo_ts` - Time series view of vaccine doses
    given to San Franciscans by demographics groups (age and race)
-   `covid19sf_vaccine_geo` - COVID-19 vaccines given to San Franciscans
    by geography

**Data soucre:** San Francisco, Department of Public Health - Population
Health Division through the San Francisco [Opne Data protal
website](https://datasf.org/opendata/)

<a href='https://ramikrispin.github.io/covid19sf/'><img src='man/figures/sf_map.png' align="right"  /></a>

## Installation

``` r
# install.packages("devtools")
devtools::install_github("RamiKrispin/covid19sf")
```

## Usage

The **ccovid19sf** package provides different views for the covid19
cases in San Francisco. That includes case distribution by age, gender,
race, etc. The following examples demonstrate some of the data use
cases.

``` r
library(covid19sf)
```

### Cases distribution by age

The covid19sf_age provides a daily summary of the cumulative positive
cases by age group:

``` r
data(covid19sf_age)

head(covid19sf_age)
#>   specimen_collection_date age_group new_confirmed_cases
#> 1               2020-03-13     25-29                   3
#> 2               2020-03-14     25-29                   2
#> 3               2020-03-15     25-29                   1
#> 4               2020-03-16     25-29                   1
#> 5               2020-03-17     25-29                   0
#> 6               2020-03-18     25-29                   3
#>   cumulative_confirmed_cases        last_updated
#> 1                          7 2021-11-01 16:00:03
#> 2                          9 2021-11-01 16:00:03
#> 3                         10 2021-11-01 16:00:03
#> 4                         11 2021-11-01 16:00:03
#> 5                         11 2021-11-01 16:00:03
#> 6                         14 2021-11-01 16:00:03
```

The following box-plot shows the distribution of the positive cases by
age group:

``` r
library(plotly)

covid19sf_age$age_group <- factor(covid19sf_age$age_group, 
                                  levels = c("0-4",  "5-10", 
                                             "11-13", "14-17",
                                             "18-20", "21-24",
                                             "25-29",
                                             "30-39", "40-49",
                                             "50-59", "60-69",
                                             "70-79", "80+"))

plot_ly(covid19sf_age, 
        color = ~ age_group, 
        y = ~ new_confirmed_cases, 
        boxpoints = "all", 
        jitter = 0.3,
        pointpos = -1.8,
        type = "box" ) %>%
layout(title = "Distribution of Daily New Covid Cases in San Francisco by Age Group",
       yaxis = list(title = "Number of Cases"),
       xaxis = list(title = "Source: San Francisco Department of Public Health"),
       legend = list(x = 0.9, y = 0.9))
```

<img src="man/figures/age_dist1.svg" width="100%" />

Here is the overall distribution of cases by age group as of 2021-10-28:

``` r
library(dplyr)
library(plotly)
covid19sf_age %>% 
  filter(specimen_collection_date == max(specimen_collection_date)) %>%
  plot_ly(values = ~ cumulative_confirmed_cases, 
          labels = ~ age_group, 
          type = "pie",
          textposition = 'inside',
          textinfo = 'label+percent',
          insidetextfont = list(color = '#FFFFFF'),
          hoverinfo = 'text',
          text = ~paste("Age Group:", age_group, "<br>",
                        "Total:", cumulative_confirmed_cases)) %>%
   layout(title = "Total Cases Distribution by Age Group")
```

<img src="man/figures/age_dist2.svg" width="70%" />

### Geospatial visualiztion

The package provides several geo-spatial dataset:

-   `covid19sf_vaccine_geo` - COVID-19 vaccines given to San Franciscans
    by geography
-   `covid19sf_geo` - Confirmed cases and deaths summarized by geography
-   `covid19sf_test_loc` - Testing locations

Those three datasets are `sf` objects, ready to use. For example,
plotting the COVID19 vaccination data by geography:

``` r
library(sf)
#> Linking to GEOS 3.8.1, GDAL 3.2.1, PROJ 7.2.1

data(covid19sf_vaccine_geo)

str(covid19sf_vaccine_geo)
#> Classes 'sf' and 'data.frame':   40 obs. of  9 variables:
#>  $ id                          : chr  "Castro/Upper Market" "Nob Hill" "Oceanview/Merced/Ingleside" "Outer Richmond" ...
#>  $ area_type                   : chr  "Analysis Neighborhood" "Analysis Neighborhood" "Analysis Neighborhood" "Analysis Neighborhood" ...
#>  $ count_vaccinated_by_dph     : num  1399 1795 4949 2692 17446 ...
#>  $ count_vaccinated            : num  18867 20246 23474 37192 37526 ...
#>  $ count_series_completed      : num  17459 18373 22067 34939 34765 ...
#>  $ acs_population              : num  22502 26445 27530 45921 37917 ...
#>  $ percent_pop_series_completed: num  0.776 0.695 0.802 0.761 0.917 ...
#>  $ last_updated                : POSIXct, format: "2021-12-13 12:45:07" "2021-12-13 12:45:09" ...
#>  $ geometry                    :sfc_MULTIPOLYGON of length 40; first list element: List of 1
#>   ..$ :List of 1
#>   .. ..$ : num [1:183, 1:2] -122 -122 -122 -122 -122 ...
#>   ..- attr(*, "class")= chr [1:3] "XY" "MULTIPOLYGON" "sfg"
#>  - attr(*, "sf_column")= chr "geometry"
#>  - attr(*, "agr")= Factor w/ 3 levels "constant","aggregate",..: NA NA NA NA NA NA NA NA
#>   ..- attr(*, "names")= chr [1:8] "id" "area_type" "count_vaccinated_by_dph" "count_vaccinated" ...

df <- covid19sf_vaccine_geo %>% filter(area_type == "Analysis Neighborhood") %>%
  dplyr::mutate(perc_complated = percent_pop_series_completed * 100)
```

We will plot the object Using the **sf** package:

``` r
plot(df[, c("perc_complated", "geometry")],
     main = "San Francisco - Percentage of Fully Vaccinated Population by Geo",
     key.pos = 1, axes = TRUE, key.width = lcm(1.2), key.length = 1.0)
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

More examples available on this
[vignette](https://ramikrispin.github.io/covid19sf/articles/geo.html)

### Tests results distribution

The covid19sf_tests provides a daily summary of the daily number of
tests and their results (positive, negative, and indeterminate):

``` r
data(covid19sf_tests)

head(covid19sf_tests)
#>   specimen_collection_date tests pos        pct neg indeterminate
#> 1               2020-03-01     2   0 0.00000000   2             0
#> 2               2020-03-03     8   2 0.25000000   6             0
#> 3               2020-03-04    12   0 0.00000000  12             0
#> 4               2020-03-06    21   1 0.04761905  20             0
#> 5               2020-03-07    23   7 0.30434783  16             0
#> 6               2020-03-08    12   3 0.25000000   9             0
#>            data_loaded_at        last_updated
#> 1 2021-12-12T09:00:08.013 2021-12-11 16:35:02
#> 2 2021-12-12T09:00:10.082 2021-12-11 16:35:02
#> 3 2021-12-12T09:00:10.087 2021-12-11 16:35:02
#> 4 2021-12-12T09:00:10.090 2021-12-11 16:35:02
#> 5 2021-12-12T09:00:10.093 2021-12-11 16:35:02
#> 6 2021-12-12T09:00:10.095 2021-12-11 16:35:02
```

The plot below shows the daily distribution of the results of the tests:

``` r
covid19sf_tests %>%
plotly::plot_ly(x = ~ specimen_collection_date,
                y = ~ pos,
                name = "Positive",
                type = 'scatter', 
                mode = 'none', 
                stackgroup = 'one',
                fillcolor = "red") %>%
  plotly::add_trace(y = ~ neg, name = "Negative", fillcolor = "green") %>%
  plotly::add_trace(y = ~ indeterminate, name = "Indeterminate", fillcolor = "gray") %>%
  plotly::layout(title = "Tests Results Distribution",
                 yaxis = list(title = "Tests Count"),
                 xaxis = list(title = "Source: San Francisco Department of Public Health"),
                 legend = list(x = 0.1, y = 0.9))
```

<img src="man/figures/test_dist.svg" width="100%" />

### Cases distribution by race ethnicity

The covid19sf_demp dataset provides a daily summary of the covid19
positive cases by race and ethnicity:

``` r
data(covid19sf_demo)

head(covid19sf_demo)
#>   specimen_collection_date race_ethnicity new_confirmed_cases
#> 1               2020-03-13          Asian                   3
#> 2               2020-03-14          Asian                   2
#> 3               2020-03-15          Asian                   2
#> 4               2020-03-16          Asian                   8
#> 5               2020-03-17          Asian                   4
#> 6               2020-03-18          Asian                   0
#>   cumulative_confirmed_cases        last_updated
#> 1                          7 2021-11-01 16:00:03
#> 2                          9 2021-11-01 16:00:03
#> 3                         11 2021-11-01 16:00:03
#> 4                         19 2021-11-01 16:00:03
#> 5                         23 2021-11-01 16:00:03
#> 6                         23 2021-11-01 16:00:03
```

Below is a plot of the cumulative positive cases by race and ethnicity:

``` r
covid19sf_demo %>%
  dplyr::arrange(specimen_collection_date) %>%
plotly::plot_ly(x = ~ specimen_collection_date, 
                y = ~ cumulative_confirmed_cases, 
                # name = 'Cases', 
                type = 'scatter', 
                mode = 'none', 
                color = ~race_ethnicity,
                stackgroup = 'one') %>%
  layout(title = "Total Cases Dist. by Race and Ethnicity",
          legend = list(x = 0.1, y = 0.9),
         yaxis = list(title = "Number of Cases", tickformat = ".0f"),
         xaxis = list(title = "Source: San Francisco Department of Public Health"))
```

<img src="man/figures/demo_dist.svg" width="100%" />
