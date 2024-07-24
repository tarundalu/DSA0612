# Calculate correlations
cor_price_rating <- cor(data$Price, data$Rating)
cor_age_rating <- cor(data$Age_Group_Factor, data$Rating)

print(paste("Correlation between Price and Rating:", cor_price_rating))
print(paste("Correlation between Age Group and Rating:", cor_age_rating))
