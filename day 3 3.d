# Since the data points are limited, create a mesh grid for the surface plot
age_levels <- as.numeric(factor(unique(data$Age_Group)))
price_levels <- seq(min(data$Price), max(data$Price), length.out = 5)

# Create a grid for Age Group and Price
age_grid <- rep(age_levels, each = length(price_levels))
price_grid <- rep(price_levels, times = length(age_levels))

# Dummy rating values for surface plot visualization
rating_grid <- rep(NA, length(age_grid))
for (i in 1:length(age_grid)) {
  age_val <- age_grid[i]
  price_val <- price_grid[i]
  subset <- data[data$Age_Group_Factor == age_val & data$Price == price_val,]
  rating_grid[i] <- ifelse(nrow(subset) > 0, subset$Rating, mean(data$Rating))
}

# Create a data frame for the surface plot
surface_data <- data.frame(Age = age_grid, Price = price_grid, Rating = rating_grid)

# Create the 3D surface plot
fig <- plot_ly(x = ~price_grid, y = ~age_grid, z = ~rating_grid, 
               type = 'surface')

fig <- fig %>% layout(scene = list(
  xaxis = list(title = 'Price ($)'),
  yaxis = list(title = 'Age Group', tickvals = 1:4, ticktext = unique(data$Age_Group)),
  zaxis = list(title = 'Rating')
))

fig
