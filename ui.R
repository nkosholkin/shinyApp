library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Manipulating with basic distribution"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Distribution parameters"),
      sliderInput("df","Degree of freedom (df):",
                  min=0.05,max=20,value=10, step=0.05),
      sliderInput("obs","Number of observations:",
                  min=1,max=1000,value=10, step=1),
      sliderInput("range","Value's range:",
                  min=-100,max=100,value=c(-10,10)),
      sliderInput("mea","Mean",
                  min=-100,max=100,value=0)
    ),
  
  mainPanel(
    tabsetPanel(
        tabPanel("Graph",
                 plotOutput("distPlot")),
        tabPanel("About Graph (Documentation)",
              HTML("Short documentation:
                   <p></p>
                   <p>This short app creates 2 distribtuions: normal with different degree of freedom and distribution with different mean.
                   You can use sliders to change distribution parameters:
                   <br>1) Degree of Freedom: the number of values in a study that are free to vary. The greater number the closer distribution to Normal
                   <br>2) Number of observation
                   <br>3) Value's range: the range of values from which they have been picked
                   <br>4) Mean: set up the mean of distribution<p>")
      )
  )

)
)
  
))