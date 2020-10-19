#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for BMI Application 
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Know Your Body Mass Index (BMI)"),
    
    sidebarPanel( h4("Calculate your Body Mass Index (BMI) here"),
                  numericInput('weight','What is your weight? (in kg)', 80, min = 10, max = 500, step = 0.01),
                  numericInput('height','How tall are you? (in m)', 1.8, min = 0.2, max =2.5, step= 0.01),
                  submitButton('Calculate BMI!'),
                  br(),
                  h4("BMI Ranges"),
                  tags$div( tags$ul (tags$li('BMI < 18.5: Risk of nutritional deficiency diseases and osteoporosis'),
                                     tags$li('BMI 18.5 TO 22.9 : LOW RISK'),
                                     tags$li('BMI 23 TO 27.4 : MODERATE RISK'),
                                     tags$li('BMI 27.5 AND ABOVE : HIGH RISK')))
    ),
    
    
     mainPanel(tabsetPanel(tabPanel("Results",
                                   h4('Your BMI:'), verbatimTextOutput("calculation"),
                                   h4('You are at '),verbatimTextOutput("result"),
                                   br(),
                                   h4('These results are based on your inputs'),
                                   p('Input Weight:'), verbatimTextOutput("inputweight"),
                                   p('Input Height:'), verbatimTextOutput("inputheight")
    ),
    
    tabPanel("About",
             br(),
             p('Are you in the healthy range? 
               Use this tool to calculate your Body Mass Index (BMI) now to know your health risk.'),
             br(),
             p('A BMI value of 23 and above indicates that your weight is outside of the healthy weight range for your height. 
             Find out more on how to achieve and maintain a healthy BMI through a healthy and active lifestyle.')
             
             
             
    )))))
