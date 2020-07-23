library(shiny) 

Calculation <- function (Dice1,Dice2,Dice3) {
  as.integer(Dice3 * 2 + (Dice1 - Dice2) / 3 + 1)
  }

shinyServer(
  function(input, output) {
    
    output$inputdice1 <- renderPrint({input$Dice1})
    output$inputdice2 <- renderPrint({input$Dice2})
    output$inputdice3 <- renderPrint({input$Dice3})
    output$diagnostic <- renderPrint({Calculation(input$Dice1,input$Dice2,input$Dice3)})
    } 
)