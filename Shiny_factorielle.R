#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
    titlePanel("Factorielle :"),
    numericInput("number", "Je veux connaître la factorielle de :", 1, min = 1, max = 100),
    textOutput("Factorielle")
)

server <- function(input, output, session) {
    
    
    factorielle <- function(x){
        res <- 1
        while(x>1){
            res <- res * x
            x <- x-1
        }
        res
    }
    output$Factorielle <- renderText({
        paste0("Le résultat est ", factorielle(input$number))
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)
