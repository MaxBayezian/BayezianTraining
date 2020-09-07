#### UI

library(shinydashboard)
library(shinyjs)
library(shinyEventLogger)


# Source scripts
source('./Modules/tab_1_ui.R')

# set_logging()
# set_logging_session()

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
            box(
              width = 6,
              tags$div(id = 'tab_2_container'))
    )
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