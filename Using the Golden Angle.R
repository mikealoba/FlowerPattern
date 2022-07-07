
# Define the number of points
points = 2000

# Define the Golden Angle
angle = pi*(3-sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Creation of Scatter Plot - Spiral Effect
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 250, alpha = 0.2, shape = 1, color = "red") +
  theme(legend.position="none",
        panel.background = element_rect(fill = "white"),
        panel.grid=element_blank(),
        axis.ticks=element_blank(),
        axis.title.y=element_blank(),
        axis.text=element_blank()) + labs(x = "Using the Golden Angle")

