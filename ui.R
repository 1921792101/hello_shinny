library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shiny Text"),
  
  # Sidebar with controls to select a dataset and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", 
                  choices = c("iris")),
      
      numericInput("obs", "Number R of observations to view:", 20)
    ),
    
    # Show a summary of the dataset and an HTML table with the 
    # requested number of observations

    
    mainPanel(
      
      tabsetPanel(type = "tabs", 
                  tabPanel("Table", tableOutput("view")),
                  tabPanel("PlotSpeal", plotOutput("plotSpeal")), 
                  tabPanel("Plotpetal", plotOutput("plotPetal"))
          
      )
      
      #verbatimTextOutput("summary"),
      
      # tableOutput("view"),
      
      #("Plot", plotOutput("plot"))
    )
  )
))
