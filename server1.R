library(shiny)
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    x    <- rnorm(500, 75, 15)
    bins <- seq(min(x), max(x), length.out = input$n + 1)
    hist(x, breaks = bins, probability = T, col = 'gray', border = 'black',
         main = "Histograma Distribución Normal (100, 20)",
         ylab = "Probabilidad",
         xlab = "Valores")
    polygon(density(x, width = 20), density = 15, col = "purple", border = "red")
    
  })
  
})
