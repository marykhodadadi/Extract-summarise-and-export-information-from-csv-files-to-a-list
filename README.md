The goal of this project is to create a function that takes as an
argument a path(or vector of paths) to one or more of the provided
files, and return a list of aggregated data from them. The csv files
contain historical prices of traded shares of fictional companies. The
filename of each file reflects the name of the fictional company. All
data sets have the same structure and 6 columns:

-   date- A specific trading day date in the format 'YYYY-MM-DD'  
-   open, max, min, close - the opening, maximum, minimum and closing
    price, respectively  
-   vol - Volume(number of shares traded during a given day).

### Dependencies

-   R version 3.5  
-   install `install.packages('purrr')` Strongly recomended
-   install `install.packages('dplyr')` which is necessary to cleaning
    data

### how to use

-   Oroginal data sets are `csv files`.  
-   Please Run `Run.R` to see R codes producing the function.  
-   To better understanding of `Purrr` package
    <https://r4ds.had.co.nz/iteration.html> is strongly recommendeed.  
-   `files` includes the path to the csv files.
-   `Datasets <- files %>% map(read.csv)` will return a list of nested
    data sets for each company.

<!-- -->

    #' library(rmarkdown)
    #' rmarkdown::render(input = "README.Rmd", output_format = 'md_document')
