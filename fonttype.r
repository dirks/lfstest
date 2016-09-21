library(ggplot2)
library(tidyr)
library(dplyr)

fonts <- read.csv('fonttable.csv')

gather(fonts, "property", "value", 7:9) %>%
group_by(property, value) %>%
filter(value) %>%
summarise(count = n()) %>%
ggplot() + aes(x = property, y = count) + geom_point()
