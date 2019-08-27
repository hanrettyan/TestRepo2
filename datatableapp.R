#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)



# Define UI for application that draws a histogram
ui <- basicPage(
    h2("The Sample Class Data"),
    DT::dataTableOutput("mysampletable")
)

    
    

# Define server logic required to draw a table
server <- function(input, output) {
    output$mysampletable = DT::renderDataTable({classdata})
}



# Run the application 
shinyApp(ui = ui, server = server)
