library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Framingham CVD risk prediction"),
  sidebarPanel(
    h3("Risk assessment to predict the risk of a heart attack"),
    numericInput("gender", "If Female, enter 1. If Male, enter 0.", 0, min = 0, max = 1, step = 1),
    numericInput("age", "Age:", 0, min = 0, max = 130, step = 1),
    numericInput("sbp", "Systolic Blood Pressure:", 70, min = 70, max = 200, step = 1),
    numericInput("smoker", "Smoker? If Yes, enter 1. If No, enter 0.", 0, min = 0, max = 1, step = 1),
    numericInput("chol", "Cholesterol Level:", 100, min = 100, max = 500, step = 1),
    numericInput("hdl", "High-Density Lipoprotein (HDL) Cholesterol in mg/dL (high HDL reduces the risk for heart disease):", 0, min = 0, max = 200, step = 1),
    numericInput("diabetes", "If previously diagnosed with diabetes, enter 1. Otherwise, enter 0.", 0, min = 0, max = 1, step = 1),
    submitButton("Submit"),
    dateInput("date", "Date:")
  ),
  mainPanel(
    h3("Results of prediction"),
    h4("You entered:"),
    verbatimTextOutput("mf"),
    h4("Your age is:"),
    verbatimTextOutput("yourage"),
    h4("Your systolic blood pressure is:"),
    verbatimTextOutput("yoursbp"),
    h4("Smoker:"),
    verbatimTextOutput("smokingHabits"),
    h4("Your cholesterol level:"),
    verbatimTextOutput("yourChol"),
    h4("Your HDL:"),
    verbatimTextOutput("hdl"),
    h4("Your diabetes:"),
    verbatimTextOutput("yourDiabetes"),
    h4("Your Framingham CVD risk estimate is:"),
    verbatimTextOutput("prediction"),
    p("Based on: 'Assessing 10-year coronary heart disease risk in people with Type 2 diabetes mellitus: Framingham versus United Kingdom Prospective Diabetes Study', Journal of Diabetes Mellitus, Vol. 4, No. 1 (2014), Article ID: 41893, 7 pages."),
    p("DOI:10.4236/jdm.2014.41003"), 
    p(" ")
  )
))



