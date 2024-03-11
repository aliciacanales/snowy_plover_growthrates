library(patchwork)
##.............................The growth rates bell curve...................................................
all_study_sites <- ggplot(data.frame(x = c(-2.5, 6)), aes(x)) + 
  stat_function(fun = dnorm, args = list(mean = 1.475765), aes(color='Coal Oil Point'), size = 1.25) +
  stat_function(fun = dnorm, args = list(mean = 1.053062), aes(color='Eden Landing'), size = 1.25) +
  stat_function(fun = dnorm, args = list(mean = 1.702186), aes(color='Hayward'), size = 1.25) +
  stat_function(fun = dnorm, args = list(mean = 3.3669), aes(color='Huntington Beach'), size = 1.25) +
  stat_function(fun = dnorm, args = list(mean = 2.359633), aes(color='Malibu Lagoon'), size = 1.25) +
  stat_function(fun = dnorm, args = list(mean = 1.401753), aes(color='Ormond Beach'), size = 1.25) +
  geom_vline(xintercept = 1,linetype = 'dashed', color = 'black') +
  theme_minimal() +
  theme(axis.text.y = element_blank(), axis.title.y = element_blank()) +
  labs(x = "Average Year-to-Year Growth Rate", title = "Growth Rates for Western Snowy Plovers", col = 'Legend') +
  scale_color_manual(values = c('Coal Oil Point'='red', 'Eden Landing'='orange', 'Hayward'='yellow', 
                                'Huntington Beach'='green', 'Malibu Lagoon'='purple', 'Ormond Beach'='blue', 'Vertical Line'='black'),
                     name = "Study Sites",
                     labels = c("Coal Oil Point", "Eden Landing", "Hayward", "Huntington Beach", "Malibu Lagoon", "Ormond Beach"))

ggplot(data.frame(x = c(-2.5, 6)), aes(x)) + 
  stat_function(fun = dnorm, args = list(mean = 1.475765), aes(color='Coal Oil Point'), size = 1.5) +
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
p + p1

##...............................time series...............................................

## Huntington
huntington_ts <- ggplot(data = huntington_beach, aes(x = year, y = individuals)) +
  geom_point(color = 'green')+
  geom_line(color = 'green')+
  labs(x = 'Year',
       y = 'Indiviudal WSP') +
  scale_x_continuous(breaks = c(2005:2016)) +
  ggtitle('Huntington Beach') +
  theme_minimal()

a.1<- huntington_ts +theme(axis.text.x = element_text(angle = 45))


## COPR
copr_ts <- ggplot(data = copr, aes(x = year, y = individuals)) +
  geom_point(color = 'red')+
  geom_line(color = 'red')+
  labs(x = 'Year',
       y = 'Indiviudal WSP') +
  scale_x_continuous(breaks = c(2001:2022)) +
  ggtitle('Coal Oil Point Reserve') +
  # theme(axis.text.x = element_text(angle = 90)) +
  theme_minimal() 
a <- copr_ts + theme(axis.text.x = element_text(angle = 45)) 


## Eden Landing
eden_landing_ts <- ggplot(data = eden_landing, aes(x = year, y = individuals)) +
  geom_point(color = 'orange')+
  geom_line(color = 'orange')+
  labs(x = 'Year',
       y = 'Indiviudal WSP') +
  scale_x_continuous(breaks = c(2010:2022)) +
  ggtitle('Eden Landing') +
  theme_minimal()
b <- eden_landing_ts + theme(axis.text.x = element_text(angle = 45)) 

## Hayward
hayward_ts <- ggplot(data = hayward, aes(x = year, y = individuals)) +
  geom_point(color = 'yellow')+
  geom_line(color = 'yellow')+
  labs(x = 'Year',
       y = 'Indiviudal WSP') +
  scale_x_continuous(breaks = c(2010:2022)) +
  ylim(0, 60) +
  ggtitle('Hayward') +
  theme_minimal()
c <- hayward_ts + theme(axis.text.x = element_text(angle = 45)) 

## Malibu Lagoon 
malibu_ts <- ggplot(data = malibu_lagoon, aes(x = year, y = individuals)) +
  geom_point(color = 'purple')+
  geom_line(color = 'purple')+
  labs(x = 'Year',
       y = 'Indiviudal WSP') +
  scale_x_continuous(breaks = c(2004:2016)) +
  ggtitle('Malibu Lagoon') +
  theme_minimal()
d <- malibu_ts + theme(axis.text.x = element_text(angle = 45)) 

## Ormond
ormond_ts <- ggplot(data = ormond_breeding_adults, aes(x = year, y = individuals)) +
  geom_point(color = 'blue')+
  geom_line(color = 'blue')+
  labs(x = 'Year',
       y = 'Indiviudal WSP') +
  scale_x_continuous(breaks = c(2014:2022)) +
  ggtitle('Ormond Beach') +
  theme_minimal()
e <- ormond_ts + theme(axis.text.x = element_text(angle = 45)) 


a + a.1 +b + c + d + e +
  plot_layout(ncol = 2) +
  plot_annotation(tag_levels = 'A')


  