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
