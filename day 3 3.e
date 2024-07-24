# 3D scatter plot already created

# Create separate 2D scatter plots for comparison

# Plot of Rating vs Price
plot_ly(data, x = ~Price, y = ~Rating, type = 'scatter', mode = 'markers',
        text = ~paste("Product:", Product, "<br>Age Group:", Age_Group)) %>%
  layout(title = "Rating vs Price", xaxis = list(title = 'Price ($)'), yaxis = list(title = 'Rating'))

# Plot of Rating vs Age Group
plot_ly(data, x = ~Age_Group_Factor, y = ~Rating, type = 'scatter', mode = 'markers',
        text = ~paste("Product:", Product, "<br>Price:", Price)) %>%
  layout(title = "Rating vs Age Group", xaxis = list(title = 'Age Group', tickvals = 1:4, ticktext = unique(data$Age_Group)), 
         yaxis = list(title = 'Rating'))
