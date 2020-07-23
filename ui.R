library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Dice Drinking Game"),
    
    sidebarPanel(
      numericInput('Dice1', 'Insert the roll of your first dice', 1, min = 1, max = 6, step = 1) ,
      numericInput('Dice2', 'Insert the roll of your second dice', 1, min = 1, max = 6, step = 1),
      numericInput('Dice3', 'Insert the roll of your third dice', 1, min = 1, max = 6, step = 1)
    ), 
    mainPanel(
      p('This is a drinking game, where, according to the roll of the three dices, a number of shots is chosen.'),
      p('The calculation is not an average or sum of the dices, but a more complex one to make the app more interesting'),
      h4('Taking into account the values entered by you:'), 
      p('Dice 1:'), verbatimTextOutput("inputdice1"),
      p('Dice 2:'), verbatimTextOutput("inputdice2"),
      p('Dice 3:'), verbatimTextOutput("inputdice3"),
      h4('The number of shots to take is:'),
      verbatimTextOutput("numbershots"),
      strong(verbatimTextOutput("diagnostic"))
      
    )
    
  )   
)