#enter any requires/library here
#require(quantmod)
#require(PerformanceAnalytics)

shinyServer(function(input, output) {
  #use the structure from trestletechnology example to load data
  data <- reactive(function(){
    path <- paste("./www/", "stocks.csv",sep="")
    data <- read.csv(path, row.names=1)
  })
})