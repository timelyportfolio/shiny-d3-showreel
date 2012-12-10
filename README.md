shiny-d3-showreel
=================

Adapt the d3 showreel example from https://github.com/mbostock/d3/tree/master/examples/showreel to get data from R using Shiny instead of from the stocks.csv file.  The showreel demonstrates various d3 plots and transitions between plots.  Since most of the plots are slightly more useful with cumulative return rather than simple price, the server.R will also make that conversion.

To run, download the zip or tar of these files, extract, and in R
    ```{r}
    require(shiny)
    runApp("c:\\path-to-downloaded-and-extracted")
    ```
  