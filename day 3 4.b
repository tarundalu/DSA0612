# Install and load necessary packages
install.packages("plotly")
library(plotly)

# Create the 3D scatter plot
fig <- plot_ly(env_data, x = ~Temperature, y = ~Humidity, z = ~CO2_Levels, 
               text = ~paste("Location:", Location),
               marker = list(size = 5),
               type = 'scatter3d', mode = 'markers')

fig <- fig %>% layout(scene = list(
  xaxis = list(title = 'Temperature (°C)'),
  yaxis = list(title = 'Humidity (%)'),
  zaxis = list(title = 'CO2 Levels (ppm)')
))

fig
