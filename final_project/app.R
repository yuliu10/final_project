#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    titlePanel("YouGov Poll Results"),
    
    
    navlistPanel(
        
        tabPanel("Question 1",
                 # Application title
                 titlePanel("How closely are you following the news about coronavirus?"),
                 plotOutput("distPlot")
                    
                 
                 ),
        tabPanel("Question 2",
                 titlePanel("Do you approve or disapprove of Donald Trump’s handling of the coronavirus outbreak?"),
                 plotOutput("distPlot2")
                 ),
        
        tabPanel("Question 3",
                 titlePanel("How concerned are you about a coronavirus epidemic here in the United States?"),
                 plotOutput("distPlot2")
                 ),
        
        tabPanel("Question 4",
                 titlePanel("How closely are you following the news about coronavirus?"),
                 plotOutput("distPlot")
                 
                 ),
        
        tabPanel("Question 5",
                 titlePanel("Taking into consideration both your risk of contracting it and the seriousness of the illness, how worried are you personally about experiencing coronavirus?"),
                 plotOutput("distPlot")
                 )
    ),
    
    selectInput("select", label = h3("Select Category"), 
                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                selected = 1),,

    
)


server <- function(input, output) {

    output$lineQ1 <- renderPlot({
        
        

        
        
    })
    
    output$lineQ2 <- renderPlot({
        
    })
    
    output$lineQ3 <- renderPlot({
        
    })
    
    output$lineQ4 <- renderPlot({
        
    })
    
    output$lineQ5 <- renderPlot({
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
