# Test Shiny web app to include a Leaflet map with the ability to filter data.

# Load necessary libraries
library(DT)
library(shiny)
library(leaflet)
library(raster)
library(dplyr)

# Load sample data for Leaflet.
load("araptus.rda")
rast <- raster("alt_22.tif")

# Create a custom marker for fun map
bluepointicon <- makeIcon(
  iconUrl = "https://www.twinword.com/wp-content/uploads/2016/10/location-icon-vector-blue-pin.svg",
  iconWidth = 30,
  iconHeight = 30
)


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
        # Basemaps
        addProviderTiles( providers$Esri.WorldImagery, group = "Imagery") %>%
        # Raster
        addRasterImage(rast, opacity = 0.5, group = "Elevation Raster") %>%
        # Data
        addMarkers( icon = bluepointicon, label =~Site , group = "Araptus Data") %>%
        # Layers Control Box
        addLayersControl(
          overlayGroups = c("Elevation Raster", "Araptus Data"),
          options = layersControlOptions(collapsed = FALSE)
        )
      
      })
  
    # Data Table output-
    output$araptusdatatable <- DT::renderDataTable({araptus}, 
                                                   # Customize Datatable Style/appearance
                                                   style = 'bootstrap',
                                                   filter='top', 
                                                   rownames = FALSE,
                                                   caption = "Test Data Table",
                                                   class = c('compact', 'row-border', 'hover', 'order-column')
                                                   )
    
    # 
    
    }
        

# Run the application 
shinyApp(ui = ui, server = server)
