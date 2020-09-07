## UI

library(shinydashboard)
library(shinyjs)

# Source scripts
source('./Modules/tab_1_ui.R')


header_content <- dashboardHeader(
  title = 'Shiny test'
)

sidebar_content <- dashboardSidebar(
  sidebarMenu(
    menuItem('Tab 1', tabName = '1'),
    menuItem('Tab 2', tabName = '2')
  )
)

body_content <- dashboardBody(
  useShinyjs(),
  
  tabItems(
    tabItem(tabName = '1',
            tab_1_ui('first-tab')),
  
    tabItem(tabName = '2',
            tags$div(id = 'tab_2_container'))
  )
  
)


ui <- fluidPage(
  dashboardPage(
    header_content,
    sidebar_content,
    body_content,
    skin = 'yellow'
  )
)