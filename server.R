library(shiny)
library(UsingR)



prediction <- function(data, option){
  
  if(option == 1){
    
    result <- sum(data)
    
  } else if (option == 2){
    
    result <- (prod(data))^(1/length(data))
    
  } else{
    
    result <- 1/(mean(1/data))
    
  }
  
  return(result)

    
  } 




shinyServer(
 
  function(input, output){
    
    d1 <- renderText({input$e1})
    d2 <- renderText({input$e2})
    d3 <- renderText({input$e3})
    d4 <- renderText({input$e4})
    d5 <- renderText({input$e5})
    
    
    
    
    option <- renderText({input$opt})
    
    
    
    output$prediction <-  renderText({prediction(as.numeric(c(d1(), d2(), d3(), d4(),d5())), as.numeric(option()))})
      
      #renderPrint(option())  #
  }
   
)