library(shiny)
shinyUI(fluidPage(
  titlePanel("Mi primer histograma en Shiny"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("n",
                   "Numero de Clases o Intervalos:",
                   min = 2,
                   max = 28,
                   value = 10)
    ),
    
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
