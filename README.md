Data set for project
================
Kristofer Sando
2/25/2021

Abstract The Komodo Dragon has been known to make astounding physical
feats despite being the size of a Crocodile. However recent studies have
shown minimized dispersal along with other Island species in the
Indonesian Archipelago due to selective processes both indirect and
direct. The data presented via this code is the factors observed to find
the cause of the reduced Dispersal in the giant Island dwelling lizard
(Daily Movement data, Exploration data, and Dispersal Mark Recapture
data) Weather it be the island’s condition, body size and condition,
Prey Biology, or Habitat quality.

Code

``` r
library(tidyverse) 
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.3     v purrr   0.3.4
    ## v tibble  3.0.4     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.0

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(readxl)

readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx")
```

    ## New names:
    ## * `` -> ...4

    ## # A tibble: 2,921 x 5
    ##    DragonID Weight `daily move(m)` ...4  Summary                                
    ##    <chr>     <dbl>           <dbl> <lgl> <chr>                                  
    ##  1 64D4C0E    0.09            12.6 NA    Daily movement distance (metres) calcu~
    ##  2 64D4C0E    0.09            25.8 NA    <NA>                                   
    ##  3 64D4C0E    0.09            29.2 NA    <NA>                                   
    ##  4 64D4C0E    0.09            37.8 NA    <NA>                                   
    ##  5 64D4C0E    0.09            57.6 NA    <NA>                                   
    ##  6 64D4C0E    0.09            58.0 NA    <NA>                                   
    ##  7 64D4C0E    0.09            59.6 NA    <NA>                                   
    ##  8 64D4C0E    0.09            77.3 NA    <NA>                                   
    ##  9 64D4C0E    0.09           119.  NA    <NA>                                   
    ## 10 64D4C0E    0.09           144.  NA    <NA>                                   
    ## # ... with 2,911 more rows
