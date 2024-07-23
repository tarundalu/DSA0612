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


# 4. Create a 3D surface plot to show how temperature changes with varying levels of humidity and wind speed
plot_ly(weather_data, x = ~Humidity, y = ~Wind_Speed, z = ~Temperature, type = 'scatter3d', mode = 'markers', color = ~Temperature, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Humidity (%)'),
    yaxis = list(title = 'Wind Speed (km/h)'),
    zaxis = list(title = 'Temperature (°C)'),
    title = '3D Scatter Plot of Temperature with Humidity and Wind Speed'
  ))
