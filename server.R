##Developing Data Products Course Project
##12/08/2019

library(shiny)
library(leaflet)

# Define server logic
shinyServer(function(input, output) {
  
  #Generating Iris Dataset Plot With the Input Values
  output$map <- renderLeaflet ({
    latLong <- data.frame(lat = input$lat, lng = input$lon )
    latLong %>%
      leaflet() %>%
      addTiles() %>%
      addMarkers()
  })
  
  output$loc <- renderText({
    loca <- paste("(", input$lat, ", ", input$lon, ")")
  })
})
