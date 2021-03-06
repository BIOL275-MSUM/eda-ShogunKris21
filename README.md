
<img src="https://www2.mnstate.edu/uploadedImages/Content/Marketing/logos/MSUM_Signature_Vert_Color.jpg" alt="MSUM logo" width="200" style="float:right"/>

# Cause of Reduced Dispersal in island Komodo Dragon

Kristofer Sando and Chris Merkord

2/25/2021

Presentation ID: 4931

Biosciences Department, Minnesota State University Moorhead, 1104 7th
Avenue South, Moorhead, MN 56563 USA

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

![Komodo National Park Facts & Information - Beautiful World Travel
Guide](https://www.beautifulworld.com/wp-content/uploads/2016/10/map-of-komodo-island.jpg)

The Indonesian archipelago is known to be home to a diverse biological
marvels and for being the home of dragons. When people hear the name
dragons they think of the fire-breathing monsters in fairy tales or the
serpent-like good luck dragons from Chinese myth. But this reptile that
has been given the namesake of the dragons is very real and very deadly.
The Komodo Dragon locally known on Komodo Island as an Ora is the
largest living member of the varanus family of lizards also known as
Monitor lizards and the apex predators of the Indonesian Islands
surrounding Komodo Island. It is a creature as astounded as it is
feared.

Sadly, like many of the famous animals, these great lizards are at the
mercy of mankind’s wrongdoings in both the sense of deforestation and
climate change. Due to the changes caused by these two man-made threats
it is commonly theorized that the population might experience some
reduced dispersal in their natural habitat. Hence the reason this study
was conducted, to determine if the cause of the reduced dispersal of the
Komodo Dragon population is indeed habitat and/or prey loss or climate
change. While a direct trip to Komodo Island was ill-advised due to
Covid-19, the internet, specifically the Dryad website (Jessop et al
2018), proved to be the perfect substitute for data collection.

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
remains unchanged for that proccess. The Daily Movement data is of
minimal use as it shows how far an individual Komodo Dragon has
traveled. The entirety of the Exploration Data on the other hand is
useful in the sense that the individual Komodos have all their movement
and exploration data shown to be resident and not leaving their site at
all. As for Mark and Recapture data, the data was averaged by age class
and all variables have been seen to be useful for the project as they
are all factors in the reduced dispersal especially the habitat quality.

## Results

After acquisition and preparation, the data was plotted via histogram
with the y-variable remaining as number of Komodo Dragon(Fig 1 and 3-10)
with the exception of figure 2 where the average weight (x-axis) of the
komodo’s is compared to mean-daily movement. And the number of the
komodo dragons were compared with other variables as indicated by the
figures below.

Figure 1: Habitat condition

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

Figure 2: Daily movement

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

Figure 3: Body condition

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

Figure 4: Inbreeding Coefficient

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

Figure 5: Body length

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

Figure 6: Komodo Dragon density

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Figure 7: Relatedness

![](README_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

Figure 8: Prey Diversity

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Figure 9: Average Weight

![](README_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

Figure 10: Age Class

![](README_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

## Discussion

Reduced dispersal in Island ecosystems is a typical phenomenon in
natural selections and most other studies have yet to truly distinguish
the causes of said reduction whether they be direct or indirect (Jessop
et al. 2018). As true as it may be, exploring the mechanisms that cause
reduced dispersal such as habitat condition, prey diversity, and overall
health of the organism finding the cause among these mechanisms could be
extremely useful in the conservation of endangered species such as the
infamous Komodo Dragon. While poaching and loss in genetic diversity
might not be the most pressing concern for these great lizards learning
why they have declined within the last few decades could help to
preserve the future of not just these dragons but many other endangered
species.

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
