library(shiny)

ui <- fluidPage(
      titlePanel("Simple Shiny App"),
      sidebarLayout(
            sidebarPanel(
                  textInput("text", "Enter text:", ""),
                  actionButton("submit", "Submit")
            ),
            mainPanel(
                  textOutput("display")
            )
      )
)

server <- function(input, output) {
      observeEvent(input$submit, {
            output$display <- renderText({
                  paste("You entered:", input$text)
            })
      })
}

shinyApp(ui = ui, server = server)

