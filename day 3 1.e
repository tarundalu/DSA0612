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

# 1. How does temperature vary with humidity and wind speed over the recorded dates?
print(weather_data)

# 2. Visualize the relationship between wind speed and humidity, considering temperature as the third dimension
ggplot(weather_data, aes(x = Wind_Speed, y = Humidity, color = Temperature)) +
  geom_point(size = 4) +
  scale_color_gradient(low = "blue", high = "red") +
  theme_minimal() +
  labs(title = "Wind Speed vs Humidity colored by Temperature", x = "Wind Speed (km/h)", y = "Humidity (%)", color = "Temperature (°C)")

# 3. Discernible pattern between temperature, humidity, and wind speed
# Creating a pair plot to explore the relationships
pairs(weather_data[, -1], main = "Pairs plot of Weather Data")

# 4. Create a 3D surface plot to show how temperature changes with varying levels of humidity and wind speed
plot_ly(weather_data, x = ~Humidity, y = ~Wind_Speed, z = ~Temperature, type = 'scatter3d', mode = 'markers', color = ~Temperature, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Humidity (%)'),
    yaxis = list(title = 'Wind Speed (km/h)'),
    zaxis = list(title = 'Temperature (°C)'),
    title = '3D Scatter Plot of Temperature with Humidity and Wind Speed'
  ))
  # 5. Compare the 3D plots of temperature against both humidity and wind speed separately

# Temperature vs Humidity
plot_ly(weather_data, x = ~Humidity, y = ~Temperature, z = ~Wind_Speed, type = 'scatter3d', mode = 'markers', color = ~Temperature, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Humidity (%)'),
    yaxis = list(title = 'Temperature (°C)'),
    zaxis = list(title = 'Wind Speed (km/h)'),
    title = '3D Scatter Plot of Temperature vs Humidity'
  ))

# Temperature vs Wind Speed
plot_ly(weather_data, x = ~Wind_Speed, y = ~Temperature, z = ~Humidity, type = 'scatter3d', mode = 'markers', color = ~Temperature, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Wind Speed (km/h)'),
    yaxis = list(title = 'Temperature (°C)'),
    zaxis = list(title = 'Humidity (%)'),
    title = '3D Scatter Plot of Temperature vs Wind Speed'
  ))
