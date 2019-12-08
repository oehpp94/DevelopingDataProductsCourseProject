##Developing Data Products Course Project
##12/08/2019

library(shiny)
library(leaflet)

# Define UI for application that draws a histogram
shinyUI
(
  fluidPage
  (
    # Application title
    titlePanel("Developing Data Products Course Project"),
    h3("12/08/2019"),
    # Sidebar with a slider input for number of bins 
    sidebarLayout
    (
      sidebarPanel
      (
        h3("Coordinates"),
        sliderInput("lat", "Latitude:", min = -180, max = 180, value = 0),
        sliderInput("lon", "Longitude:", min = -180, max = 180, value = 0)
      ),
      
      # Show a plot of the generated distribution
      mainPanel
      (
        h3("World Map:"),
        leafletOutput("map"),
        h3("Location:"),
        textOutput("loc")
      )
    )
  )
)
