## Chirs' equation
## Nt+1 = aNt
## if a>1 postive growth rate
## if a<1 negative growth rate
## glarma king tides

## Create a function that solves for year to year variability of growthrates


## Use a for loop to calculate the growth rate using equation a(grwth_rt) = nt+1/nt

growth_rate_fcn <- function(df) {
  df$growth_rates <- NA
  
  for (i in 1:(length(df$individuals) - 1)) {
    df$growth_rates[i] <- (df$individuals[i + 1]) / (df$individuals[i])
  }
  return(df)
}


## Running the growth rate function over all individual data
copr <- map_df(.x = list(copr), ~growth_rate_fcn(.x)) %>% 
  drop_na() ## mean GR= 1.475765

eden_landing <- map_df(.x = list(eden_landing), ~growth_rate_fcn(.x)) %>% 
  drop_na() ## mean GR = 1.053062

hayward <- map_df(.x = list(hayward), ~growth_rate_fcn(.x)) %>% 
  drop_na() ## mean GR = 1.702186

huntington_beach <- map_df(.x = list(huntington_beach), ~growth_rate_fcn(.x)) %>% 
  drop_na() ## mean GR = 3.3669 but has an outlier the first year

malibu_lagoon <- map_df(.x = list(malibu_lagoon), ~growth_rate_fcn(.x)) %>% 
  drop_na() ## mean GR = 2.359633

ormond_breeding_adults <- map_df(.x = list(ormond_breeding_adults), ~growth_rate_fcn(.x)) %>% 
  drop_na() ## mean GR = 1.401753



## going to attempt glarma model!

copr_nino<- el_nino_yrs[-23,] %>% 
  select(-year)

updated_copr <- cbind(copr, copr_nino)

y <- updated_copr$individuals

x.1 <- updated_copr %>% 
  select(intercept, presence) ## explanatory variables the intercept and whether there was an elnino year
x.1<- as.matrix(x.1) ## matrix


x.0 <- updated_copr %>% 
  select(intercept) ## making a null model

x.0 <- as.matrix(x.0)

## null model without elnino

mdl1 <- glarma(y, x.0, phiLags = c(1), type = 'Poi', method = 'FS',
               residuals = 'Pearson', maxit = 100, grad = 1e-6) 

plot.glarma(mdl1)

## model with elnino
mdl2 <- glarma(y, x.1, phiLags = c(1), type = 'Poi', method = 'FS',
               residuals = 'Pearson', maxit = 100, grad = 1e-6)

summary(mdl1) ## 232 this is the null its better but not by much 
summary(mdl2) ## 234 this has the elnino years















