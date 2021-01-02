# VECTOR
vec = c(1,2,3)
vec[c(1,3)]

# LIST
lis = list(1,'Asad', TRUE)

#MATRIX
mat = matrix(c(1,2,3,4,5))
 
mat1 = matrix(c(1,2,3,4), nrow = 2, ncol = 2)
mat2 = matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
mat2[2,2] # Extracting the element
mat2[2,2]=45 # Changing the element

# ARRAY
# 1D ARRAY
v1 = c(1,2,3)
v2 = c(3,5,6)
arr = array(c(v1,v2))

# ND ARRAY
arr2 = array(c(v1,v2), dim = c(2,3))

# Extracting element from array
arr2[1,3]
arr2[2,2]

v11 = c(1,2,3,4,5,6)
v12 = c(11,12,13,14,15,16)
arr3 = array(c(v11,v12), dim=c(2,3,2))

arr3[1,2,1]  # Extracting the number dim 1, dim 2
arr3[2,3,2]
#----------------------------------------------------
# DATAFRAMES
fruit = data.frame(
  fruit_name = c('Apple','Banan','Guava'), 
  fruit_cost = c(100,40,36)
)

View(fruit) # A good look on another tab

# Extraction from the dataframe
fruit$fruit_name
fruit$fruit_cost

# INBBUILT FUNCTIONS
View(iris)

str(iris)

head(iris, n=10)

table(iris$Species) # Count of species

#----------------------------------------------
# min/max
min(iris$Sepal.Length); max(iris$Petal.Length)
mean(iris$Sepal.Width)
range(iris$Petal.Length)

# IF / IF-ELSE (DISCISION MAKING)

if (iris$Sepal.Length[1]>4)
 { print('Sepal length is greater than given number.') }

# ----------------------------------------------

if(iris$Sepal.Length[1]<4){
  print('sepal length is less than given number.')
}else{
  print('Sepal length is greater then given number.')
}

# ----------------------------------------------
# LOOPS
# For loop
vect = 1:9
for (i in vect){
  print(i+5)
}
  
# While loop , unless and until the condition does not get true, theh task will
# not be terminated.
i = 1
while(i<9){
  print(i+5)
  i= i+1
}
  
#--------------------------------------------------
# USER DEFINED FUNCTION
add5 = function(x){
  print(x+5)
}

add5(2)
# --------------------------------------------------
table(iris) # Frequency of the table, on the categorical values.
table(fruit)

# --------------------------------------------------
# Factor (crucial for Machine Learning, for featyre Engineering)
# TO CONVERT ALPHABATICAL TO NUMERICAL FOR MODELS
color = c('yellow', 'blue', 'Red')
color1 = as.factor(color) # Categories will get arranged in alphabetical order.
# --------------------------------