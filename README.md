# callettes

Color palettes by Calle: `callettes`

## Install package

``` r
#install.packages("devtools")
devtools::install_github("borstell/callettes")
library(callettes)
```

## Color palettes

### Basic rainbow palette
``` r
scales::show_col(callettes$rainbow, ncol=5)
```

![](examples/rainbow.png)

### Basic colorblind-friendly palette
```r
#remotes::install_github("nowosad/colorblindcheck")
library(colorblindcheck)
palette_check(callettes$friendly, plot = TRUE)
```
![](examples/friendly.png)

### Expanded color palette
``` r
scales::show_col(expand_palette(callettes$green, amount = -.1), ncol=10, labels=F)
```

![](examples/green_expanded.png)