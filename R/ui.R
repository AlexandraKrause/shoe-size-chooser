library(shiny)
library(shinydashboard)
library(readr)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(rsconnect)

ui <- dashboardPage(
  skin =  "purple",
  dashboardHeader(title = "Shoe Size Chooser",
                  dropdownMenuOutput("messageMenu")),
  dashboardSidebar(
  ),
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
      tags$link(rel = "stylesheet", type = "text/css", href = "custom2.css")),
    #first tab content
    tabItems(
      tabItem(tabName = "dashboard",
              fluidRow(
                box(
                  title ="Shoe Size Chooser", status = "primary", solidHeader = TRUE,
                  plotOutput("plot1", width="100%")
                ),
                tags$a(href="http://inresgb-lehre.iaas.uni-bonn.de/impressum/", "Impressum", 
                       style = "font-size:25px;",style = "color: black;")
              )
      )
    )
  )
)



