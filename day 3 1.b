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
# 2. Visualize the relationship between wind speed and humidity, considering temperature as the third dimension
ggplot(weather_data, aes(x = Wind_Speed, y = Humidity, color = Temperature)) +
  geom_point(size = 4) +
  scale_color_gradient(low = "blue", high = "red") +
  theme_minimal() +
  labs(title = "Wind Speed vs Humidity colored by Temperature", x = "Wind Speed (km/h)", y = "Humidity (%)", color = "Temperature (°C)")
