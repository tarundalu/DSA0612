# Install and load necessary packages
install.packages("plotly")
library(plotly)

# Create the 3D scatter plot
fig <- plot_ly(acad_data, x = ~Math_Score, y = ~Science_Score, z = ~Attendance, 
               text = ~paste("Student:", Student),
               marker = list(size = 5),
               type = 'scatter3d', mode = 'markers')

fig <- fig %>% layout(scene = list(
  xaxis = list(title = 'Math Score'),
  yaxis = list(title = 'Science Score'),
  zaxis = list(title = 'Attendance (%)')
))

fig
