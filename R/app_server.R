#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  data1 <- reactiveVal(NULL)
  
  
  callModule(mod_load_data_server, "load_data_1",
             data1 = data1)
  
  callModule(mod_analysis_server, "analysis_ui_1",
             data1 = data1)
  
}
