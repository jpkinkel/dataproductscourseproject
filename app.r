library(ggplot2)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Basic dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard"))

    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
              fluidRow(
                box(title = "choose a predictor for Miles per gallon in the mtcars dataset to assert which is the best candidate" ),
                box(
                  title = "Choose predictor",
                  selectInput("variable", "Variable:",
                              c("weight" = "wt",
                                "Transmission" = "am",
                                "Gears" = "gear"))
                  
                ),
                box(plotOutput("plot2", height = 250))
              )
      )
      )
)
)

server <- function(input, output) {
  output$plot2 <- renderPlot({
    dat <- mtcars
    
    ggplot(dat, aes_string(input$variable, "mpg" )) + geom_point() 
  })
}

shinyApp(ui, server)