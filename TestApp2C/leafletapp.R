#Test Shiny web app to include a Leaflet map with the ability to filter data.

library(shiny)

# Download Leaflet package, load Leaflet.
install.packages("leaflet")

# Load, view sample data for Leaflet.
load("araptus.rda")
View(araptus)
   

# Define UI for application that draws the Leaflet map
ui <- fluidPage(
    # Shiny Application Title
    titlePanel("Sample Map Numero Uno"),
    leafletOutput("araptusmap1"))
    

# Define server logic required to draw the Leaflet map
server <- function(input, output) {

    output$araptusmap1 <- renderLeaflet({
        leaflet(araptus) %>%
            addProviderTiles( providers$Esri.WorldImagery ) %>%
            addCircles ( color = "yellow", label = ~Site)}
    )
}
        
# Run the application 
shinyApp(ui = ui, server = server)
