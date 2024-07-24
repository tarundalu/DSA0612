# Install and load necessary packages
install.packages("plotly")
library(plotly)

# Convert age group to a numerical factor
data$Age_Group_Factor <- as.numeric(factor(data$Age_Group, levels = unique(data$Age_Group)))

# Create the 3D scatter plot
fig <- plot_ly(data, x = ~Price, y = ~Rating, z = ~Age_Group_Factor, 
               text = ~paste("Product:", Product, "<br>Age Group:", Age_Group),
               marker = list(size = 5),
               type = 'scatter3d', mode = 'markers')

fig <- fig %>% layout(scene = list(
  xaxis = list(title = 'Price ($)'),
  yaxis = list(title = 'Rating'),
  zaxis = list(title = 'Age Group', tickvals = 1:4, ticktext = unique(data$Age_Group))
))

fig
