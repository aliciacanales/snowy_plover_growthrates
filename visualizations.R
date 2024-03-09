
ggplot(data.frame(x = c(-2.5, 6)), aes(x)) + 
  stat_function(fun = dnorm, args = list(mean = 1.475765), aes(color='Coal Oil Point')) +
  stat_function(fun = dnorm, args = list(mean = 1.053062), aes(color='Eden Landing')) +
  stat_function(fun = dnorm, args = list(mean = 1.702186), aes(color='Hayward')) +
  stat_function(fun = dnorm, args = list(mean = 3.3669), aes(color='Huntington Beach')) +
  stat_function(fun = dnorm, args = list(mean = 2.359633), aes(color='Malibu Lagoon')) +
  stat_function(fun = dnorm, args = list(mean = 1.401753), aes(color='Ormond Beach')) +
  geom_vline(xintercept = 1, linetype = 'dashed', color = 'black') +
  theme_minimal() +
  theme(axis.text.y = element_blank(), axis.title.y = element_blank()) +
  labs(x = "Average Year-to-Year Growth Rate", title = "Growth Rates for Western Snowy Plovers", col = 'Legend') +
  scale_color_manual(values = c('Coal Oil Point'='red', 'Eden Landing'='orange', 'Hayward'='yellow', 
                                'Huntington Beach'='green', 'Malibu Lagoon'='purple', 'Ormond Beach'='blue', 'Vertical Line'='black'),
                     name = "Study Sites",
                     labels = c("Coal Oil Point", "Eden Landing", "Hayward", "Huntington Beach", "Malibu Lagoon", "Ormond Beach"))

p1 <- ggplot(data.frame(x = c(-2.5, 6)), aes(x)) + 
  stat_function(fun = dnorm, args = list(mean = 1.475765), aes(color='Coal Oil Point'), size = 2) +
  stat_function(fun = dnorm, args = list(mean = 1.053062), aes(color='Eden Landing')) +
  stat_function(fun = dnorm, args = list(mean = 1.702186), aes(color='Hayward')) +
  stat_function(fun = dnorm, args = list(mean = 3.3669), aes(color='Huntington Beach')) +
  stat_function(fun = dnorm, args = list(mean = 2.359633), aes(color='Malibu Lagoon')) +
  stat_function(fun = dnorm, args = list(mean = 1.401753), aes(color='Ormond Beach')) +
  geom_vline(xintercept = 1, linetype = 'dashed', color = 'black') +
  geom_vline(xintercept = 1.475765,linetype = 'solid', color = 'red') +
  theme_minimal() +
  theme(axis.text.y = element_blank(), axis.title.y = element_blank()) +
  labs(x = "Average Year-to-Year Growth Rate", title = "Growth Rates for Western Snowy Plovers", col = 'Legend') +
  scale_color_manual(values = c('Coal Oil Point'='red', 'Eden Landing'='grey', 'Hayward'='grey', 
                                'Huntington Beach'='grey', 'Malibu Lagoon'='grey', 'Ormond Beach'='grey'),
                     name = "Study Sites",
                     labels = c("Coal Oil Point", "Eden Landing", "Hayward", "Huntington Beach", "Malibu Lagoon", "Ormond Beach"))
p1