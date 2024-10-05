# Load the ggplot2 library
library(ggplot2)

# Data for plotting
x <- seq(0, 10, length.out = 100)
y1 <- sin(x)
y2 <- cos(x)

# Create a data frame for ggplot2
data <- data.frame(x, y1, y2)

View(data)
# Line Plot
ggplot(data) +
  geom_line(aes(x = x, y = y1, color = 'Sin(x)')) +
  geom_line(aes(x = x, y = y2, color = 'Cos(x)')) +
  labs(title = 'Line Plot of Sin(x) and Cos(x)',
       x = 'X axis',
       y = 'Y axis') +
  scale_color_manual(name = "Functions", values = c('Sin(x)' = 'blue', 'Cos(x)' = 'red')) +
  theme_minimal()

# Scatter Plot
set.seed(42)
x_scatter <- runif(50)
y_scatter <- runif(50)
colors <- runif(50)
sizes <- 1000 * runif(50)

scatter_data <- data.frame(x_scatter, y_scatter, colors, sizes)

ggplot(scatter_data) +
  geom_point(aes(x = x_scatter, y = y_scatter, color = colors, size = sizes), alpha = 0.5) +
  labs(title = 'Scatter Plot with Random Data',
       x = 'X axis',
       y = 'Y axis') +
  scale_color_gradient(low = 'blue', high = 'red') +
  theme_minimal()

# Bar Chart
categories <- c('A', 'B', 'C', 'D', 'E')
values <- c(5, 7, 3, 8, 6)

bar_data <- data.frame(categories, values)

ggplot(bar_data) +
  geom_bar(aes(x = categories, y = values), stat = 'identity', fill = 'skyblue') +
  labs(title = 'Bar Chart of Categories',
       x = 'Categories',
       y = 'Values') +
  theme_minimal()
