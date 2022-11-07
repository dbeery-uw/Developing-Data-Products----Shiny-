#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("mtcars Multivariable Regression Model Builder"),
    sidebarLayout(
      sidebarPanel(
        h3("Choose your Predictors"),
        h6("Outcome = MPG"),
        checkboxInput("wt", "Include/Exclude Wt", value = TRUE),
        checkboxInput("am", "Include/Exclude am", value = TRUE),
        checkboxInput("hp", "Include/Exclude hp", value = TRUE),
        checkboxInput("disp", "Include/Exclude disp", value = TRUE),
        checkboxInput("qsec", "Include/Exclude qsec", value = TRUE),
        checkboxInput("gear", "Include/Exclude gear", value = TRUE),
        checkboxInput("vs", "Include/Exclude vs", value = TRUE),
        checkboxInput("carb", "Include/Exclude carb", value = TRUE),
        checkboxInput("drat", "Include/Exclude drat", value = TRUE),
        checkboxInput("cyl", "Include/Exclude cyl", value = TRUE),
        submitButton("Submit")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Coefficients"),
            textOutput("text1"),
            h5("95% Cl beta-coffecient for wt"),
            textOutput("text2"),
            h5("95% Cl beta-coffecient for am"),
            textOutput("text3"),
            h5("95% Cl beta-coffecient for hp"),
            textOutput("text4"),
            h5("95% Cl beta-coffecient for disp"),
            textOutput("text5"),
            h5("95% Cl beta-coffecient for qsec"),
            textOutput("text6"),
            h5("95% Cl beta-coffecient for gear"),
            textOutput("text7"),
            h5("95% Cl beta-coffecient for vs"),
            textOutput("text8"),
            h5("95% Cl beta-coffecient for carb"),
            textOutput("text9"),
            h5("95% Cl beta-coffecient for drat"),
            textOutput("text10"),
            h5("95% Cl beta-coffecient for cyl"),
            textOutput("text11"),
            
        ))
    ))

