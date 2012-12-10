#enter any requires/library here
require(quantmod)
#require(PerformanceAnalytics)

shinyServer(function(input, output) {
  #use the structure from trestletechnology example to load data
  data <- reactive(function(){
    tckrs <- c("MSFT","AAPL","AMZN","IBM")
    getSymbols(tckrs, from="1999-12-31")
    
    
    #do silly function to convert an xts into a monthly data.frame of adj.close cumulative return
    convert.xts.to.df <- function(x) {
      x.monthly <- to.monthly(x)
      x.df <- data.frame(rep(unlist(strsplit(colnames(x)[1],"\\."))[1],NROW(x.monthly)),
                         format(index(x.monthly),"%b %Y"),
                         coredata(x.monthly/lag(x.monthly,k=1))[,6], stringsAsFactors=FALSE)
      colnames(x.df) <- c("symbol","date","price")
      x.df[1,3] <- 1
      x.df[,3] <- cumprod(x.df[,3])
      x.df
    }
    
    data <- rbind(
      convert.xts.to.df(MSFT),
      convert.xts.to.df(AAPL),
      convert.xts.to.df(AMZN),
      convert.xts.to.df(IBM))
    
    data
  })
  
  output$showreel <- reactive(function() { data() })
})