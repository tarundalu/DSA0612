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

# 3. Can we see any clustering or outliers in the 3D plot of stock price, volume traded, and market cap?
# Plot created in step 2 will help us identify clustering or outliers visually.

# 4. Generate a 3D surface plot to illustrate how market capitalization changes with variations in stock price and volume traded
plot_ly(market_data, x = ~Stock_Price, y = ~Volume_Traded, z = ~Market_Cap, type = 'scatter3d', mode = 'markers', color = ~Market_Cap, colors = c('green', 'yellow')) %>%
  layout(scene = list(
    xaxis = list(title = 'Stock Price ($)'),
    yaxis = list(title = 'Volume Traded (millions)'),
    zaxis = list(title = 'Market Cap ($)'),
    title = '3D Surface Plot of Market Cap with Stock Price and Volume Traded'
  ))
  
# 5. Compare the 3D plots of stock price against both volume traded and market cap separately

# Stock Price vs Volume Traded
plot_ly(market_data, x = ~Volume_Traded, y = ~Stock_Price, z = ~Market_Cap, type = 'scatter3d', mode = 'markers', color = ~Stock_Price, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Volume Traded (millions)'),
    yaxis = list(title = 'Stock Price ($)'),
    zaxis = list(title = 'Market Cap ($)'),
    title = '3D Scatter Plot of Stock Price vs Volume Traded'
  ))

# Stock Price vs Market Cap
plot_ly(market_data, x = ~Market_Cap, y = ~Stock_Price, z = ~Volume_Traded, type = 'scatter3d', mode = 'markers', color = ~Stock_Price, colors = c('blue', 'red')) %>%
  layout(scene = list(
    xaxis = list(title = 'Market Cap ($)'),
    yaxis = list(title = 'Stock Price ($)'),
    zaxis = list(title = 'Volume Traded (millions)'),
    title = '3D Scatter Plot of Stock Price vs Market Cap'
  ))
