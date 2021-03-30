Data set for project
================
Kristofer Sando
2/25/2021

## Abstract

The Komodo Dragon has been known to make astounding physical feats
despite being the size of a Crocodile. However recent studies have shown
minimized dispersal along with other Island species in the Indonesian
Archipelago due to selective processes both indirect and direct. The
data presented via this code is the factors observed to find the cause
of the reduced Dispersal in the giant Island dwelling lizard (Daily
Movement data, Exploration data, and Dispersal Mark Recapture data)
Weather it be the island’s condition, body size and condition, Prey
Biology, or Habitat quality. With all this in mind we simply have to
answer the question of what is the cause of the reduced dispersal and is
it biological or genetic, and do the humans or climate change have any
parts to play in this.

## Introduction

## Methods

### Data acquisition

This step was tedious to say the least. After visiting various websites
I acquired the data from dryad after searching for the specific topic on
said site (Jessop et al. 2018). The link to the data was posted in the
dryad repository and downloaded into excel where it was analyzed before
transferring it into Rstudio. The data was divided into three separate
tables. The first table was describing daily movement for the Komodo
dragons which include the aforementioned variable, weight and ID of the
dragons that moved. The second table includes exploration data which
tells us that the distance moved was either resident, leaving the site,
swimming, and moving to another Island. And the third and final table is
the most broad of the three tables. Variables included Age class,
Weight, average SVL, body condition, Capture history, komodo dragon
density, prey biomass, Inbreeding coefficients and
relatedness(R/inbreed), and habitat quality(habpc1).

### Data preparation

After downloading the data via PC excel, The data was posted into
Rstudio version 1.4.1103 (RStudio Team. 2021) within R version 4.0.3 by
using the read\_excel function in the readxl package (Wickham and Bryan.
2019) for on all three separate tables. And after a survey of the three
tables it was decided that the data in the first two tables should be
averaged by Dragon Identification number while the Mark recapture data
remains unchanged.

## Results

## Discussion

## Literature Cited

Jessop, Tim S. et al. (2018), Data from: Exploring mechanisms and
origins of reduced dispersal in island Komodo dragons, Dryad, Dataset,
<https://doi.org/10.5061/dryad.2n8055g>
<https://datadryad.org/stash/dataset/doi:10.5061/dryad.2n8055g>

RStudio Team (2021). RStudio: Integrated Development Environment for R.
RStudio, PBC, Boston, MA URL <http://www.rstudio.com/>.

R Core Team (2020). R: A language and environment for statistical
computing. R Foundation for Statistical Computing, Vienna, Austria. URL
<https://www.R-project.org/>.

Hadley Wickham and Jennifer Bryan (2019). readxl: Read Excel Files. R
package version 1.3.1. <https://CRAN.R-project.org/package=readxl>

Wickham et al., (2019). Welcome to the tidyverse. Journal of Open Source
Software, 4(43), 1686, <https://doi.org/10.21105/joss.01686>

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

move <-
readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", sheet = 1)
```

    ## New names:
    ## * `` -> ...4

``` r
explore <-
readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", sheet = 2)
```

    ## New names:
    ## * `` -> ...4

``` r
markcapturedata <-
readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", sheet = 3)
```

    ## New names:
    ## * `` -> ...11

``` r
move
```

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

``` r
explore
```

    ## # A tibble: 4,115 x 5
    ##    ID     `site location` explore ...4  `Tlemetry derived movement activities c~
    ##    <chr>  <chr>             <dbl> <lgl> <chr>                                   
    ##  1 64D12~ K1                    1 NA    1= resident                             
    ##  2 63A43~ K1                    1 NA    2= leave site                           
    ##  3 63A43~ K1                    1 NA    3= swimming                             
    ##  4 63A43~ K1                    1 NA    4=  move onto another island            
    ##  5 63A43~ K1                    1 NA    <NA>                                    
    ##  6 63A43~ K1                    1 NA    <NA>                                    
    ##  7 63A43~ K1                    1 NA    <NA>                                    
    ##  8 63A43~ K1                    1 NA    <NA>                                    
    ##  9 63A43~ K1                    1 NA    <NA>                                    
    ## 10 63A43~ K1                    1 NA    <NA>                                    
    ## # ... with 4,105 more rows

``` r
markcapturedata
```

    ## # A tibble: 1,131 x 13
    ##    `Age Class` Weight `Avrg SVL` bodcondition `Capture histor~ vkdens preybio
    ##    <chr>        <dbl>      <dbl> <chr>        <chr>             <dbl>   <dbl>
    ##  1 Adult         45.2       128. -8.57001060~ AAA0000              13    3286
    ##  2 Adult         30.6       117. 4.416535101~ AA00000              13    3286
    ##  3 Adult         40.5       127. 2.635649328~ A000000              13    3286
    ##  4 Adult         34.6       117. -1.32328655~ AAA0A00              13    3286
    ##  5 Adult         47.4       126. -2.07639175~ A000000              13    3286
    ##  6 Adult         28.9       111. -1.01571466~ AA00000              13    3286
    ##  7 Adult         28.8       113. -1.18236252~ A000000              13    3286
    ##  8 Adult         58         141. -4.90481686~ ADD0000              13    3286
    ##  9 Adult         34.4       117. -1.20709108~ A000000              13    3286
    ## 10 Adult         56         128. -3.72371820~ A000A0A              13    3286
    ## # ... with 1,121 more rows, and 6 more variables: inbreed <dbl>, R <dbl>,
    ## #   habpc1 <dbl>, ...11 <lgl>, `Data variable` <chr>, `Defintion (fully
    ## #   definition in methods)` <chr>
