diabetesRisk <- function(gender, age, glucose, sbp, smoker, chol, hdl, diabetes) 15.5305 + 28.441*gender-1.4792*log(age)-14.4588*gender*log(age)+1.8515*gender*(log(age))^2-0.9119*log(sbp) -0.2767*smoker -0.7181*log(chol/hdl)-0.1759*diabetes-0.1999*diabetes*gender

shinyServer(
  function(input, output){
    output$mf <- renderPrint({input$gender})
    output$yourage <- renderPrint({input$age})
    output$yoursbp <- renderPrint({input$sbp})
    output$yourChol <- renderPrint({input$chol})
    output$smokingHabits <- renderPrint({input$smoker})
    output$yourhdl <- renderPrint({input$hdl})
    output$yourDiabetes <- renderPrint({input$diabetes})
    output$prediction <- renderPrint({diabetesRisk(input$gender, input$age, input$glucose, input$sbp, input$smoker, input$chol, input$hdl, input$diabetes)}) 		
    output$odate <- renderPrint({input$date})		
  }
)



