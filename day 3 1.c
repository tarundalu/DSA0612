# Load necessary libraries
library(ggplot2)
library(plotly)

# Create the data frame
weather_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  Wind_Speed = c(15, 12, 18, 20, 16)
)

# 3. Discernible pattern between temperature, humidity, and wind speed
# Creating a pair plot to explore the relationships
pairs(weather_data[, -1], main = "Pairs plot of Weather Data")
