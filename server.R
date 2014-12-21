shinyServer(
    function(input, output){
        output$outplot <- renderPlot(
            curve(input$a * sin(2*pi*input$f*x + input$p*pi/180),
                  ylim = c(-10,10),
                  xlab = "x",
                  ylab = "a*sin(2*pi*f*x + p)",
                  main = "Sine Wave"))
    }
    )