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
