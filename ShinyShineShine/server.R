#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  library(tidyr)
  library(dplyr)
  
  y <- reactive ({
    t <- 1
    if(input$wt) {
      a <- 6
    } else {
      a <- t 
    }
    if(input$am) {
      b <- 9
    } else {
      b <- t
    } 
    if(input$hp) {
      c <- 4
    } else {
      c <- t 
    }
    if(input$disp) {
      e <- 3
    } else {
      e <- t
    }
    if(input$qsec) {
      f <- 7
    } else {
      f <- t
    }
    if(input$gear) {
      g <- 10
    } else {
      g <- t
    }
    if(input$vs) {
      h <- 8
    } else {
      h <- t
    }
    if(input$carb) {
      i <- 11
    } else {
      i <- t
    }
    if(input$drat) {
      j <- 5
    } else {
      j <- t
    }
    if(input$cyl) {
      d <- 2
    } else 
      d <- t
    mtcars <- mtcars %>%
      select(t, a, b, c, d, e, f, g, h, i, j)
    lm(mpg ~ . -1, data = mtcars)
  })
  
  output$text1 <- renderText({
    coefficients(y())
  })
  
  output$text2 <- renderText({
    if(input$wt) {
    confint(y())["wt",]
    } else NULL
  })
  
  output$text3 <- renderText ({
    if(input$am) {
    confint(y())["am",]
    } else NULL
  })  
    
  output$text4 <- renderText ({
    if(input$hp) {
    confint(y())["hp",] 
    } else NULL
  }) 
    
  output$text5 <- renderText ({
    if(input$disp) {
    confint(y())["disp",]
    } else NULL
  })
    
  output$text6 <- renderText ({
    if(input$qsec) {  
    confint(y())["qsec",]
    } else NULL
  })
    
  output$text7 <- renderText ({
    if(input$gear) {
    confint(y())["gear",]
    } else NULL
  })
  output$text8 <- renderText ({
    if(input$vs) {
    confint(y())["vs",]
    } else NULL
  })
  
  output$text9 <- renderText ({
    if(input$carb) {
    confint(y())["carb",]
    } else NULL
  })
  
  output$text10 <- renderText ({
    if(input$drat) {
    confint(y())["drat",]
    } else NULL
  })
  
  output$text11 <- renderText ({
    if(input$cyl) {
    confint(y())["cyl",]
    } else NULL
  })
})



