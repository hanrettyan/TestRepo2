### THIS DUDE DOESN'T WORK.... YET. 

#Test Shiny web app to include a Leaflet map IN A DASHBOARD with the ability to filter data.
library(shiny)
library(shinydashboard)

# Load DT library
library(DT)

# Load Leaflet library
library(leaflet)

# Load, view sample data for Leaflet.
load("araptus.rda")

############################
############ UI ############
############################

#### NEW TEST CODE:
ui <- dashboardPage(
    dashboardHeader(title = "Test Dashboard"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Class A", tabName="class a", icon=icon("dashboard")),
            menuItem("Class B", tabName="class b", icon=icon("school")),
            menuItem("Class C", tabName="class C", icon=icon("pencil"))
        )
    ),
    
    dashboardBody(
        tabItems(
            #Class A tab items
            tabItem(tabName = "class a",
                    h2("Class A Data"),
                    fluidRow(
                        # Add Leaflet Map
                        column(leafletOutput("araptusmap1"), width = 6),
                        
                        #Add the data table
                        column (DT::dataTableOutput("araptusdatatable"), width = 6))
            ),
            
            #Class B tab items
            tabItem(tabName = "class b",
                    h2("Class B Data"),
                    fluidRow(
                        # Add Leaflet Map
                        column(leafletOutput("araptusmap1"), width = 6)
            
        )
    )
)
)
)

############################
########## SERVER ##########
############################
server <- function(input, output) {
    
    # Map output-
    output$araptusmap1 <- renderLeaflet({
        leaflet(araptus) %>%
            addProviderTiles( "providers$Esri.WorldImagery" ) %>%
            addCircles ( color = "yellow", label = ~Site)})
    
    # Data Table output-
    output$araptusdatatable <- DT::renderDataTable({araptus}, filter='top' )
}


# Run the application 
shinyApp(ui = ui, server = server)
