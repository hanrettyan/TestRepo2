#Test Shiny web app to include a Leaflet map with the ability to filter data.
library(shiny)

# Load DT library
library(DT)

# Load Leaflet library
library(leaflet)

# Load, view sample data for Leaflet.
load("araptus.rda")
View(araptus)
   

############################
############ UI ############
############################

ui <- fluidPage(
    # Shiny Application Title
    titlePanel("Sample Map Numero Uno"),
    
    # Add Leaflet Map
    leafletOutput("araptusmap1"),
    
    #Add the data table
    DT::dataTableOutput("araptusdatatable")
    )
    

############################
########## SERVER ##########
############################
server <- function(input, output) {

    # Map output-
    output$araptusmap1 <- renderLeaflet({
        leaflet(araptus) %>%
            addProviderTiles( providers$Esri.WorldImagery ) %>%
            addCircles ( color = "yellow", label = ~Site)})
  
    # Data Table output-
    output$araptusdatatable <- DT::renderDataTable({araptus}, filter='top' )
    }
        

# Run the application 
shinyApp(ui = ui, server = server)
