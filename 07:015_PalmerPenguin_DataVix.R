#Adria Vasquez
#Homework 2 Data Viz

#install.remotes
install.packages("remotes")


#install data
remotes::install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)
penguins

library(tidyverse)
glimpse(penguins)

#Data Viz Scatter size X Species
ggplot(data = penguins, 
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 3,            
             alpha = 0.8) +
  #theme_minimal() +
  scale_color_manual(values =
                       c("darkorange","purple","cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_minimal()

#Data viz size x island
ggplot(data = penguins, 
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  geom_point(aes(color = island, 
                 shape = species),
             size = 3,            
             alpha = 0.8) +
  #theme_minimal() +
  scale_color_manual(values =
                       c("darkorange","purple","cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for each island",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin island",
       shape = "Penguin species") +
  theme_minimal()
