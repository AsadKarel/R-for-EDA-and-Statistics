pok = read.csv('C:/Users/hi/Downloads/pokemon.csv')

# -------------------------------------------------------
# Shape:
nrow(pok)
ncol(pok)

# --------------------------------------------------------
# Tabulation of the category:
table(pok$is_legendary) # counts
table(pok$generation) # No of pokemons belongs to each generation.
table(pok$type1) # count of pokemons along type 1

# --------------------------------------------------------
# Process on num data:
min(pok$hp)
max(pok$hp)

# ---------------------------------------------------------
# Checking the null values:
is.na(pok)
sum(is.na(pok))

is.na(pok$abilities)
sum(is.na(pok$abilities))

# -----------------------------------------------------------
# Rename columns:
colnames(pok) # list of columns

colnames(pok)=='type1' # True/False will be shown

colnames(pok)[colnames(pok)=='type1'] = 'Primary_type' # True value will be changed.
colnames(pok)[colnames(pok)=='type2'] = 'Secondary_type'
colnames(pok)[colnames(pok)=='name'] = 'Pokemon_name'

# -----------------------------------------------------------
# Extracting data:
library(dplyr)
pok_grss = pok %>% filter(pok$Primary_type=='grass')
min(pok_grss$speed)
max(pok_grss$speed)

# -----------------
# Statistics:
mean(pok$sp_attack)
mean(pok_grss$sp_attack)

# ---------------------------------------------------------
# Plots
library(ggplot2)
ggplot(data=pok_grss, aes(x=hp)) + geom_histogram()
ggplot(data=pok_grss, aes(x=hp)) + geom_histogram(fill='palegreen',col=('black'))

ggplot(data=pok_grss, aes(x=is_legendary)) + geom_bar()

# -----------------------------------------------------------------
pok_fi = pok_grss = pok %>% filter(pok$Primary_type=='fire')
min(pok_fi$speed)
mean(pok_fi$speed)

# -----------------------------------------------------------------
# Visualization stats 

# generation wise pokemon counts:
ggplot(data=pok_fi, aes(x=generation, fill=as.factor(generation))) + geom_bar()

# type wise pokemon counts:
ggplot(data=pok_fi, aes(x=Secondary_type, fill=as.factor(Secondary_type))) + geom_bar()

# Relation in attack / defence :
ggplot(data=pok_fi, aes(x=sp_attack, y=sp_defense)) + geom_point()

# plot weight vs height:
ggplot(data=pok_fi, aes(x=height_m, y=weight_kg)) + geom_line()

