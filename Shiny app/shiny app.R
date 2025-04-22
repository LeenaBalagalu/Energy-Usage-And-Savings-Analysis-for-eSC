library(shiny)
library(ggplot2)
library(dplyr)
# Load the data from the RDS file

merge_subset <- readRDS("data/merge_subset.rds")
merge_subset <- merge_subset[format(merge_subset$time, "%Y") != "2019", ]
# Convert the 'time' column to Date format assuming it includes both date and time
#merge_subset$time <- as.POSIXct(merge_subset$time, format = "%Y-%m-%d %H:%M:%S")

# Define the user interface
ui <- fluidPage(
  titlePanel("Exploratory Data Visualization"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("month", "Choose Month:",
                  min = 1, max = 12, value = 1, step = 1),
      textOutput("selectedMonth")  # Dynamic text output to display the month name
    ),
    mainPanel(
      plotOutput("totalEnergyPlot"),
      plotOutput("heatingCoolingPlot"),
      plotOutput("kitchenEnergyPlot")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$selectedMonth <- renderText({
    month.name[input$month]
  })
  
  # Filter data based on selected month
  filtered_data <- reactive({
    req(merge_subset)
    # Extracting month from the 'time' column to filter the data
    subset(merge_subset, as.numeric(format(time, "%m")) == input$month)
  })
  
  # Plot total energy consumption
  output$totalEnergyPlot <- renderPlot({
    data <- filtered_data()
    ggplot(data, aes(x = time, y = out.total.energy_consumption)) +
      geom_line() + 
      labs(title = "Total Energy Consumption", x = "Time", y = "Energy (kWh)")
  })
  
  # Plot heating and cooling energy consumption
  output$heatingCoolingPlot <- renderPlot({
    data <- filtered_data()
    ggplot(data, aes(x = time, y = out.heating_cooling.energy_consumption)) +
      geom_line(color = "red") +
      labs(title = "Heating and Cooling Energy Consumption", x = "Time", y = "Energy (kWh)")
  })
  
  # Plot kitchen energy consumption
  output$kitchenEnergyPlot <- renderPlot({
    data <- filtered_data()
    ggplot(data, aes(x = time, y = out.kitchen_energy_consumption)) +
      geom_line(color = "green") +
      labs(title = "Kitchen Energy Consumption", x = "Time", y = "Energy (kWh)")
  })
}

# Run the application
shinyApp(ui = ui, server = server)
