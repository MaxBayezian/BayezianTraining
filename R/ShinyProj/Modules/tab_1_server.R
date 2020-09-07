## Module for tab one (server)

tab_1 <- function(input, output, session){
  
  rv <- reactiveValues()
  
  rv$outputs <- NULL
  
  observeEvent(input$go_button, {
    
    rv$outputs <- input$inputs_tab2
    
  })
  
  observeEvent(input$inputs_tab2, {
    log_event(input$inputs_tab2)
    if(!is.null(input$inputs_tab2)){
      if(input$inputs_tab2 < 1){
        disable(input$go_button)
      } else {
        enable(input$go_button)
      }
    }
    
    
  })
  
  
  return(rv)
}