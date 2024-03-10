## Coal Oil Points

copr_nino<- el_nino_yrs[-23,] %>% 
  select(-year)

updated_copr <- cbind(copr, copr_nino)

updated_copr$intercept <- as.integer(1)

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

plot.glarma(mdl2)

## model with elnino
mdl2 <- glarma(y, x.1, phiLags = c(1), type = 'Poi', method = 'FS',
               residuals = 'Pearson', maxit = 100, grad = 1e-6)

summary(mdl1) ## 232 this is the null its better but not by much 
summary(mdl2) ## 234 this has the elnino years



## Eden Landing

eden_nino<- el_nino_yrs[10:22, ] %>% 
  select(-year)

updated_eden <- cbind(eden_landing, eden_nino)

updated_eden$intercept <- as.integer(1)

y <- updated_eden$individuals

x.1 <- updated_eden %>% 
  select(intercept, presence) ## explanatory variables the intercept and whether there was an elnino year
x.1<- as.matrix(x.1) ## matrix


x.0 <- updated_eden %>% 
  select(intercept) ## making a null model

x.0 <- as.matrix(x.0)

## null model without elnino

eden_mdl1 <- glarma(y, x.0, phiLags = c(1), type = 'Poi', method = 'FS',
               residuals = 'Pearson', maxit = 100, grad = 1e-6) 

plot.glarma(eden_mdl1)

## model with elnino
eden_mdl2 <- glarma(y, x.1, phiLags = c(1), type = 'Poi', method = 'FS',
               residuals = 'Pearson', maxit = 100, grad = 1e-6)

summary(eden_mdl1) ## 227.7754 this is the null its better but not by much 
summary(eden_mdl2) ## 227.9787