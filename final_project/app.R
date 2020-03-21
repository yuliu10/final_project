library(shiny)
library(tidyverse)

question_choice = list("How closely are you following the news about coronavirus?" = 1,
                       "Do you approve or disapprove of Donald Trump’s handling of the coronavirus outbreak?" = 2,
                       "How concerned are you about a coronavirus epidemic here in the United States?" = 3,
                       "How closely are you following the news about coronavirus?" = 4,
                       "Taking into consideration both your risk of contracting it and the seriousness of the illness,
                 how worried are you personally about experiencing coronavirus?" = 5
)

demographic_choice = list("Age" = 1, "Education" = 2, "Gender" = 3, "Income" = 4, "Race" = 5, "Region" = 6)


x = list(agedf, edudf, genderdf, incomedf, racedf, regiondf)


ui <- fluidPage(
    
    #create a layout
    sidebarLayout(
        #sidebar
        sidebarPanel(
            #user select input of question
            selectInput(inputId = "question",
                        label = "Select your question: ",
                        choices = question_choice,
                        selected = NULL),
            
            #user select input of category
            selectInput(inputId = "demographic",
                        label = "Select your demographic: ",
                        choices = demographic_choice,
                        selected = NULL),
            
            selectInput(inputId = "category",
                        label = "Select your category: ",
                        choices = , #i need to fix this
                        selected = NULL) 
        ),
        
        
        
        #main
        mainPanel(
            plotOutput("selected_graph")
        )
    )
)


server <- function(input, output){
    observe({
        #Allow only destination choices that have flights coming from selected origin
        updateSelectInput(session, "category", choices = unique(x[[demographic]][[4]])
        )
    })
    
    #filter out the needed data
    df <- reactive({
        x[demographic] %>%
            filter(question == input$question, .[4] == input$category)})
    
    #output of ggplot
    output$selected_graph <- renderPlot({
        ggplot(df, aes(x = week, y = percent, group = response)) +
            geom_point() + geom_line(aes(color=response))
        ggtitle(paste("Proportional Changes in Answer Based on ", input$category,"of",input$destination))})
}


shinyApp(ui = ui, server = server)