# Load necessary libraries
library(ggplot2)
library(plotly)

# Create the data frame
market_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Stock_Price = c(100, 102, 98, 105, 108),
  Volume_Traded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  Market_Cap = c(500, 510, 490, 525, 540)
)

# 1. How does stock price relate to both volume traded and market capitalization?
print(market_data)

# 2. Create a 3D scatter plot to visualize the relationship between volume traded, market cap, and stock price
plot_ly(market_data, x = ~Volume_Traded, y = ~Market_Cap, z = ~Stock_Price, type = 'scatter3d', mode = 'markers', color = ~Stock_Price, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Volume Traded (millions)'),
    yaxis = list(title = 'Market Cap ($)'),
    zaxis = list(title = 'Stock Price ($)'),
    title = '3D Scatter Plot of Stock Price with Volume Traded and Market Cap'
  ))
