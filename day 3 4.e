# 3D scatter plot already created

# Create separate 2D scatter plots for comparison

# Plot of CO2 Levels vs Temperature
plot_ly(env_data, x = ~Temperature, y = ~CO2_Levels, type = 'scatter', mode = 'markers',
        text = ~paste("Location:", Location)) %>%
  layout(title = "CO2 Levels vs Temperature", xaxis = list(title = 'Temperature (°C)'), yaxis = list(title = 'CO2 Levels (ppm)'))

# Plot of CO2 Levels vs Humidity
plot_ly(env_data, x = ~Humidity, y = ~CO2_Levels, type = 'scatter', mode = 'markers',
        text = ~paste("Location:", Location)) %>%
  layout(title = "CO2 Levels vs Humidity", xaxis = list(title = 'Humidity (%)'), yaxis = list(title = 'CO2 Levels (ppm)'))
