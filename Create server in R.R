library(shiny)

server <- function(input, output) {
      observeEvent(input$submit, {
            output$display <- renderText({
                  paste("You entered:", input$text)
            })
      })
}
