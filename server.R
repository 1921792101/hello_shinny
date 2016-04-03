library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    dist <-switch(input$dataset,
           "iris" = iris)

  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
  
  
  output$plotSpeal <- renderPlot({
    dataset1 = head(datasetInput(), n = input$obs)
    plot(dataset1[,1:2])
  })
  
  output$plotPetal <- renderPlot({
    dataset2 = head(datasetInput(), n = input$obs)
    plot(dataset2[,3:4])
  })
})
