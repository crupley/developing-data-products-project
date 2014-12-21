shinyUI(pageWithSidebar(
    headerPanel(h1("Sine Wave Generator")),
    sidebarPanel(
        h2("Parameters"),
        sliderInput("a","Amplitude, A", 0, 10, 1, step = 1),
        sliderInput("f","Frequency, f", 1, 10, 1, step = 1),
        sliderInput("p","Phase, p", 0, 360, 0, step = 10)),
    mainPanel(plotOutput("outplot"),
              p("Instructions: Adjust the parameter sliders on the left and see how they affect the sine wave plotted above."),
              p("The general form of the sine function is given by:"),
              p("A * sin(2*pi*f*x + p)"),
              p("Where,"),
              p("*A is the amplitude of the sine wave"),
              p("*f is the frequency"),
              p("*p is the phase")
    )))