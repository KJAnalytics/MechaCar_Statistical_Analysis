## Deliverable 1 ##

# Load dpylr package
library(dplyr)

# Read csv as df
MCmpg <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MCmpg)

# Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MCmpg)

# Summary Stats
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MCmpg))

## Deliverable 2 ##

# Read csv
Coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Summary Stats
tot_summ <- Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summ <- Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

## Deliverable 3 ##

# t-test - all
t.test(Coil$PSI, mu = 1500)

# t-test - L1
t.test(subset(Coil$PSI, Coil$Manufacturing_Lot == 'Lot1'), mu = 1500)

# t-test - L2
t.test(subset(Coil$PSI, Coil$Manufacturing_Lot == 'Lot2'), mu = 1500)

# t-test - L3
t.test(subset(Coil$PSI, Coil$Manufacturing_Lot == 'Lot3'), mu = 1500)