# Shoe-size-calculator

# claculation


#### Zusammenspiel Server UI ####

server <- function(input,output, session) {
  
  
  observeEvent(input$slider1,{
    if(min(input$slider1) == max(input$slider1)){
      updateSliderInput(session, "slider1", min = 1, max = 1000,
                        value = c(min(input$slider1)-1, max(input$slider1)))
    }
  })

  
  dataSource <- reactive({
    
  })
  # Table 

  output$table1 <- renderTable({
    dataSource()}
  )
  
  
  # Histogram
  
  
  output$plot1 <- renderPlot({
    
  })
}