## Module for tab one (server)

tab_1 <- function(input, output, session){
  
  rv <- reactiveValues()
  
  rv$outputs <- NULL
  
  observeEvent(input$go_button, {
    
    rv$outputs <- input$inputs_tab2
    
  })
  
  return(rv)
}