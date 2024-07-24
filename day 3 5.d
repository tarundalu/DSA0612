# Since the data points are limited, create a mesh grid for the surface plot
math_levels <- seq(min(acad_data$Math_Score), max(acad_data$Math_Score), length.out = 5)
attend_levels <- seq(min(acad_data$Attendance), max(acad_data$Attendance), length.out = 5)

# Create a grid for Math Score and Attendance
math_grid <- rep(math_levels, each = length(attend_levels))
attend_grid <- rep(attend_levels, times = length(math_levels))

# Dummy Science Score values for surface plot visualization
science_grid <- rep(NA, length(math_grid))
for (i in 1:length(math_grid)) {
  math_val <- math_grid[i]
  attend_val <- attend_grid[i]
  subset <- acad_data[acad_data$Math_Score == math_val & acad_data$Attendance == attend_val,]
  science_grid[i] <- ifelse(nrow(subset) > 0, subset$Science_Score, mean(acad_data$Science_Score))
}

# Create a data frame for the surface plot
surface_data <- data.frame(Math_Score = math_grid, Attendance = attend_grid, Science_Score = science_grid)

# Create the 3D surface plot
fig <- plot_ly(x = ~math_grid, y = ~attend_grid, z = ~science_grid, 
               type = 'surface')

fig <- fig %>% layout(scene = list(
  xaxis = list(title = 'Math Score'),
  yaxis = list(title = 'Attendance (%)'),
  zaxis = list(title = 'Science Score')
))

fig
