# 3D scatter plot already created

# Create separate 2D scatter plots for comparison

# Plot of Science Score vs Math Score
plot_ly(acad_data, x = ~Math_Score, y = ~Science_Score, type = 'scatter', mode = 'markers',
        text = ~paste("Student:", Student)) %>%
  layout(title = "Science Score vs Math Score", xaxis = list(title = 'Math Score'), yaxis = list(title = 'Science Score'))

# Plot of Science Score vs Attendance
plot_ly(acad_data, x = ~Attendance, y = ~Science_Score, type = 'scatter', mode = 'markers',
        text = ~paste("Student:", Student)) %>%
  layout(title = "Science Score vs Attendance", xaxis = list(title = 'Attendance (%)'), yaxis = list(title = 'Science Score'))
