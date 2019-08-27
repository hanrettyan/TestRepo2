
# Access data
library(readr)
library(DT)

classdata <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vRFdDGgmoI-9prZL45gHOixA4thITZleI_DkEZ49E-JqELRaxn8K46YM1HaBb0bBgkV5Xx-YrxKRgYM/pub?output=csv")
names(classdata) <- c("Class Number", "Class Name", "Grade Received", "Academic Year", "Semester")
datatable(classdata)

# Build Shiny App
library(shiny)


############################
############ UI ############
############################
ui <- basicPage(
    h3("The Sample Class Data"),
    DT::dataTableOutput("mysampletable")
)

############################
########## SERVER ##########
############################
server <- function(input, output) {
    output$mysampletable = DT::renderDataTable({classdata}, filter='top')
}

# Run the application 
shinyApp(ui = ui, server = server)
