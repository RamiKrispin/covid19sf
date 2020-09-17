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
              "leaflet",
              "ggplot2",
              "remotes",
              "rcmdcheck",
              "viridisLite")




for(i in pkg_list){
  cat("\n")
  cat(paste0("\033[0;", 42, "m","Installing ", i,"\033[0m","\n"))
  install.packages(pkgs = i, repos = "https://cran.rstudio.com/", quiet = TRUE)
  if(i %in% rownames(installed.packages())){
    cat(paste0("\033[0;", 42, "m",i, " installed successfully ", "\033[0m","\n"))
  } else {
    cat(paste0("\033[0;", 41, "m", "failed to installed", i, "\033[0m","\n"))
    stop()
  }
}

# Installing the "rnaturalearthhires" package
# install.packages("rnaturalearthhires", repos = "http://packages.ropensci.org", type = "source")

remotes::install_github("ropensci/rnaturalearthhires")

fail <- FALSE

for(i in c(pkg_list, "rnaturalearthhires")){

  if(i %in% rownames(installed.packages())){
    cat(i, "...")
    cat(paste0("\033[0;", 42, "m","OK","\033[0m","\n"))
  } else {
    cat(i, "...")
    cat(paste0("\033[0;", 41, "m","Fail","\033[0m","\n"))
    fail <- TRUE
  }

  if(fail){
    stop("Fail to install some package/s")
  }
}

