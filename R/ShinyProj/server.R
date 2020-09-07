## Server
library(dplyr)
source('./Modules/tab_1_server.R')
source('./Modules/tab_2_ui.R')

server <- function(input, output) {
  
  rv <- reactiveValues(
    outputs = NULL,
    reset_num = 0
    
  )
  
  tab_1_return <- callModule(tab_1, id = 'first-tab')
  
  observeEvent(tab_1_return$outputs, {
    
    # Extracting Outputs number
    rv$outputs <- tab_1_return$outputs
    # rv$reset_num <- rv$reset_num + 1
    
    
    # Removing ui
    removeUI(selector = '#tab_2_inputs')
    
    # Inserting ui
    insertUI(selector = '#tab_2_container', 
             ui = tags$div(
               'secondtab' %>% tab_2_ui(num = rv$outputs),
               id = 'tab_2_inputs')
             
    )
    
  })
  
  
}

# tags$div(
#   paste('second_tab', rv$reset_num, sep = '_') %>% tab_2_ui(num = rv$outputs),
#   id = 'tab_2_inputs')
# 
# )