

# legtheme 0.1.0

[![Build Status](https://travis-ci.org/leg-ufpr/legtheme.svg?branch=master)](https://travis-ci.org/leg-ufpr/legtheme)

LEG template for documents.

## Introduction

Some description.

## Download and install

### Linux/Mac

Use the `devtools` package (available from
[CRAN](http://cran-r.c3sl.ufpr.br/web/packages/devtools/index.html)) to
install automatically from this GitHub repository:


```r
library(devtools)
install_github("leg-ufpr/legtheme")
```

Alternatively, download the package tarball: [legtheme_0.1.0.tar.gz][]
and run from a UNIX terminal (make sure you are on the container file
directory):


```
R CMD INSTALL -l /path/to/your/R/library legtheme_0.1.0.tar.gz
```

Or, inside an `R` session:


```
install.packages("legtheme_0.1.0.tar.gz", repos = NULL,
                 lib.loc = "/path/to/your/R/library",
                 dependencies = TRUE)
```

Note that `-l /path/to/your/R/library` in the former and `lib.loc =
"/path/to/your/R/library"` in the latter are optional. Only use it if
you want to install in a personal library, other than the standard R
library.

### Windows

Download Windows binary version: [legtheme_0.1.0.zip][] (**do not unzip
it under Windows**), put the file in your working directory, and from
inside `R`:


```
install.packages("legtheme_0.1.0.zip", repos = NULL,
                 dependencies = TRUE)
```

## Authors

- Original [theme](https://github.com/coatless/uiucthemes) by [James L.
  Balamuta](@coatless)
- LEG theme adaptation by:
  - [Fernando de Pol Mayer][]

## Documentation

The reference manual in PDF can be found here: [legtheme-manual.pdf][]

## License

MIT. See [LICENSE](./LICENSE)

<!-- links -->



[legtheme_0.1.0.tar.gz]: https://github.com/leg-ufpr/legtheme/raw/master/downloads/legtheme_0.1.0.tar.gz
[legtheme_0.1.0.zip]: https://github.com/leg-ufpr/legtheme/raw/master/downloads/legtheme_0.1.0.zip
[legtheme-manual.pdf]: https://github.com/leg-ufpr/legtheme/raw/master/downloads/legtheme-manual.pdf
[Fernando de Pol Mayer]: http://www.leg.ufpr.br/~fernandomayer
