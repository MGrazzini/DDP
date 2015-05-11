##server.R
shinyServer(
  function(input, output) {
    x <- reactive(is.numeric(input$lambda) && input$lambda > 0)
    output$textsam <- renderText({
      if(x() == TRUE) {
        set.seed(3)
        simulation <- matrix(rexp(50000, input$lambda), 1000, 50)
        simMean <- apply(simulation, 1 , mean)
        mean(simMean)
      }
      else "Lambda must be numeric and strictly positive"
    })
    output$textfun <- renderText({
      if (x()==TRUE) 1/input$lambda
      else "Lambda must be numeric and strictly positive"
    })
  }
)