library(tidyverse) 
library(readxl)

move <-
  readxl::read_excel(
    "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", 
    sheet = 1,
    range = cell_cols(1:3)
  ) %>% 
  rename(
    dragon_id = DragonID,
    weight = Weight,
    daily_move = `daily move(m)`
  ) %>% 
  print()


explore <-
  readxl::read_excel(
    "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", 
    sheet = 2,
    range = cell_cols(1:3)
  ) %>%
  rename(
    dragon_id = ID,
    site = `site location`,
    area_explored = explore
  ) %>%
  print()
  
age_class_corrections <- tribble(
  ~age_class, ~new_age,
  "Adult","Adult",
  "Juvenile","Juvenile",
  "Post Hatchling","Post Hatchling",
  "Sub Adult","Sub Adult",
  "Hatchling", "Hatchling",
  "Post hatchling","Post Hatchling",
  "Subadult","Sub Adult",
  "Sub adult","Sub Adult",
  "Adut","Adult",
  "Post-hatch","Post Hatchling",
  "Sub Adullt","Sub Adult"
)

markcapturedata <-
  readxl::read_excel(
    "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", 
    sheet = 3,
    range = cell_cols(1:10),
    na = "--"
  ) %>%
  rename(
    age_class = `Age Class`,
    weight = Weight,
    body_length = `Avrg SVL`,
    body_condition = bodcondition,
    capture_history = `Capture history`,
    density = vkdens,
    prey_biomass = preybio,
    inbreeding_cof = inbreed,
    relatedness = R,
    habitat_condition = habpc1
  ) %>%
  mutate(
    body_condition = as.numeric(body_condition)
  ) %>% 
  left_join(age_class_corrections) %>%
  print()

filter(markcapturedata, is.na(body_condition))


move
explore
markcapturedata

distinct(markcapturedata,age_class)


NewMovement <- group_by (move, dragon_id)
NewMovement

Averagemove <- summarize(NewMovement, weight = mean(weight, na.rm = TRUE), 
                         mean_dailymove = mean(daily_move, na.rm = TRUE))
Averagemove

Exploratory <- group_by(explore, dragon_id)
Exploratory
Explored <- summarize(Exploratory, mean_averageexplore = mean(area_explored, na.rm = TRUE))

Komodocapturedata <- group_by(markcapturedata, new_age)
Komodocapturedata
Komododata <- summarize(Komodocapturedata, 
                        weight = mean(weight, na.rm = TRUE),
                        bodylength = mean(body_length, na.rm = TRUE),
                        health = mean(body_condition, na.rm = TRUE),
                        density = mean(density, na.rm = TRUE),
                        preybio = mean(prey_biomass, na.rm = TRUE),
                        inbreed = mean(inbreeding_cof, na.rm = TRUE),
                        R = mean(relatedness, na.rm = TRUE),
                        mean_habitat = mean(habitat_condition, na.rm = TRUE))
Komododata                        

ggplot(data = Averagemove) + 
  geom_histogram(mapping= aes(x = weight), bins = 5, fill = "blue", color = "black") +
  labs(x = "weight", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )

ggplot(data = Averagemove) + 
  geom_histogram(mapping= aes(x = mean_dailymove), bins = 5, fill = "blue", color = "black") +
  labs(x = "average movement", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = body_length), bins = 10, fill = "yellow", color = "black") +
  labs(x = "body length", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )  

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = body_condition), bins = 10, fill = "#C5351B", color = "black") +
  labs(x = "body condition", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "grey", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )  

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = prey_biomass), bins = 10, fill = "#C5351B", color = "black") +
  labs(x = "preybio", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "red", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )  

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = density), bins = 10, fill = "grey", color = "black") +
  labs(x = "density", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )  

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = inbreeding_cof), bins = 10, fill = "#C5351B", color = "black") +
  labs(x = "inbreed_cof", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )  

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = relatedness), bins = 10, fill = "red", color = "black") +
  labs(x = "Relatedness", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )  

ggplot(data = markcapturedata) + 
  geom_histogram(mapping= aes(x = habitat_condition), bins = 10, fill = "green", color = "black") +
  labs(x = "Habitat condition", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )

ggplot(data = markcapturedata) + 
  geom_bar(mapping= aes(x = new_age), bins = 10, fill = "green", color = "black") +
  labs(x = "Age of Komodo Dragon", y = "# of Komodo Dragons") + 
  scale_y_continuous(limits = c(NA, NA), expand = expansion(mult = 0)) +
  theme_classic(base_size = 10) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1)),
    axis.text.x = element_text(angle = 55, hjust = 1),
    axis.ticks.x = element_blank()
  )
