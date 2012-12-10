reactiveSvg <- function (outputId) 
{
  HTML(paste("<div id=\"", outputId, "\" class=\"shiny-network-output\"><svg /></div>", sep=""))
}

shinyUI(pageWithSidebar(
                        headerPanel(title="d3 Showreel Example Using Data Supplied by R"),
                        
                        sidebarPanel(
                            helpText(HTML("All source available on <a href = \"https://github.com/timelyportfolio/d3-shiny-plot\">Github</a>"))
                        ),
                        
                        mainPanel(
                                includeHTML("showreel.html"),
                                reactiveSvg(outputId = "showreel")
                            )
                        )
        )