library(shiny)

shinyServer(function(input,output){
  output$distPlot <- renderPlot({
    x <- seq(input$range[1], input$range[2], length=input$obs)
    hx <- dnorm(x, input$mea)
    plot(x, hx, type="l", lty=2, xlab="x value",
         ylab="Density", main="Distributions (Dist)")
    lines(x, dt(x,input$df), lwd=2, col="blue")
    labels <- c(paste("df = ",input$df, "; mean=0"), 
                paste("df = normal; mean = ", input$mea))
    legend("topright", inset=c(0,0), title="Distributions", labels, 
           lwd=2, lty=c(1, 2), col=c("blue", "black"))
    })
})