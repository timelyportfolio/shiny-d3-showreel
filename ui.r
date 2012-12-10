shinyUI(pageWithSidebar(
                        headerPanel(title="d3 Showreel Example Using Data Supplied by R"),
                        sidebarPanel(),
                        mainPanel(includeHTML("showreel.html"))
                        )
        )