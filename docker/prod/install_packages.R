# installing package imports packages
pkg_list <- c("dplyr",
              "tibble",
              "devtools",
              "here",
              "lubridate",
              "magrittr",
              "purrr",
              "rmarkdown",
              "flexdashboard",
              "tidyr",
              "plotly",
              "reactable",
              "leaflet",
              "rnaturalearth",
              "sp",
              "rgeos",
              "mapview",
              "ggplot2",
              "viridisLite")


install.packages(pkgs = pkg_list, repos = "https://cran.rstudio.com/")

# Installing the "rnaturalearthhires" package
install.packages("rnaturalearthhires", repos = "http://packages.ropensci.org", type = "source")

fail <- FALSE

for(i in c(pkg_list, "rnaturalearthhires")){

  if(i %in% rownames(installed.packages())){
    cat(i, "...OK\n")
  } else {
    cat(i, "...Fail\n")
    fail <- TRUE
  }

  if(fail){
    stop("Fail to install some package/s")
  }
}

