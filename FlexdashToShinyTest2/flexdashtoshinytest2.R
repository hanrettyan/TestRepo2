## Test Shiny web app to host and re-render html flexdashboard on every user click.

# Load necessary libraries
library(shiny)
library(crunchy)
library(knitr)
library(markdown)

############################
############ UI ############
############################

ui <- shinyUI(
    fluidPage(
        uiOutput('markdown')
    )
)

############################
########## SERVER ##########
############################
server <- function(input, output) {
    output$markdown <- renderUI({
       HTML(markdown::markdownHTMLOptions (knit('crosstalkapptest.Rmd', quiet=TRUE)))
    })
}

    
# Run the application 
shinyApp(ui = ui, server = server)
