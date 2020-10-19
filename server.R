#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

cal_BMI <- function(weight,height) 
    {weight/(height^2)}

range_BMI <- function(weight,height){
    BMI <- cal_BMI(weight, height)
    ifelse(BMI <18.5,"Risk of nutritional deficiency diseases and osteoporosis",
           ifelse(BMI<23,"Low Risk - Healthy Range",
           ifelse(BMI<27.4,"Moderate Risk","High Risk")))
}

shinyServer(
    function(input, output) {
        
        output$inputweight <- renderPrint({input$weight})
        output$inputheight <- renderPrint({input$height})
        output$calculation <- renderPrint({cal_BMI(input$weight,input$height)})
        output$result <- renderPrint({range_BMI(input$weight,input$height)})
    } 
)