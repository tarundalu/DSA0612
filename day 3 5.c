# Calculate correlations
cor_math_science <- cor(acad_data$Math_Score, acad_data$Science_Score)
cor_math_attendance <- cor(acad_data$Math_Score, acad_data$Attendance)
cor_science_attendance <- cor(acad_data$Science_Score, acad_data$Attendance)

print(paste("Correlation between Math Score and Science Score:", cor_math_science))
print(paste("Correlation between Math Score and Attendance:", cor_math_attendance))
print(paste("Correlation between Science Score and Attendance:", cor_science_attendance))
