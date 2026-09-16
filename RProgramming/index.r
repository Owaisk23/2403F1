

a <- 5
print(a)

print("Hello from R")

b <- TRUE
a <- 67.78 

fname <- "Owais Ahmed"
lname <- "Khan"

concatenation 
paste(fname, lname)

## assignment of variables
name <- "Owais Ahmed"
 lname = "Khan"
 "Owais Ahmed Khan" -> fullName
 
#  class(name)
 
#  j <- 5L
#  class(j) # type of numeric class is always double
#  typeof(j)
 
#  #Operators 
# #  #arithmetic
#  num1 <- 20
#  num2 <- 10
 
#  num1 + num2 #ADD
#  num1 - num2 #SUB
#  num1 * num2 #MULTIPLY
#  num1 / num2 #DIVIDE
#  num1 %% num2 #REMAINDER
#  num1 %/% num2 #QUOTIENT
#  num1 ^ num2 #POWER
 
 
 #logical  
 #Assignment Operators
#  <- ,->, =
 #Relational / Comparison
#  < ,> , <=, >=, ==,!=
 

# age = as.integer(readline("Enter your Age...!")) # String

 
#  print(age)
 
 
#  if(age >= 18)
#  {  
#   print("You're an adult.")
   
# }else{
#   print("You're not an adult.")
  
# }
 
 
#   age <- 18
#   print(age)
 
#   if(age > 18 & !(age ==18))
#   {  
#    print("You're an adult.")
 
#   }else if(age == 18){
 
#      print("You're just an adult")
 
#   }else{
#    print("You're not an adult.")
 
#   }
 
 
#  demo <- function(age){
#   if(as.integer(age) > 18 )
#   {  
#    print("You can drive.")
#   }else if(as.integer(age) == 18){
#      print("You should get liscense first")
#   }else{
#    print("You can't drive.")
#   }
#  }
#  demo(8)
 
 # dimensional data (vectors)
#  months <- c(4,5,6)
#  ages <- c(24,45,65)
#  print(ages)
 
#  totalAge <- ages / months
#  totalAge
 
 
#  names<-c("a", "bobzy", "c")
#  names
 
#  if("bob" %in% names){
#      print("value found")
#  }else{
#      print("value not found")
 
#  }
 
#  Switch
#  p <- 1
#  x <- switch(
#  p,
#  "hi",
#  "bye")
 
#  print(x)
 
#  p <- 6
#  x <- switch(
#    as.character(p),
#    "22"="hi",
#    "24"="bye",
#    "4"="hi bye",
#    "6"="bye bye")
 
#  print(x)
 
 #loops for, while, repeat
 #Jump statement
 
 
#  for(i in 1:10){
   
#    print(i)
#  }
 
#  prices <- c(66,78,54,90,87,987,66)
#  print(prices[6])
 
#  for (val in prices){
#   print( paste("Price :", val))
#  }
 
#  #while 
 #x <- 1  #left assignment
#   1 -> x  #right assignment
  
#  while(x < 10){
#    print("hi")
#    x <- x+1;
   
#  }
  
  
#   y<- 3
  
#   repeat{
    
#     if(y == 6){
#       break;
#     }
  
#     print("hi");
#     y<- y + 1
    
#   }
  

#  for(i in 1:10){
#   if(i ==5){
#     next
#   }
#    print(i)
#    if( i ==8) {
#      break
#    }
   
#  }
  
  
  
  
    # Create a program which print country vector with proper sequence.
    #if the value contains 'somalia' it should not get printed but 
    #if the country name is 'pakistan' print happy independence
    #other wise print all names.
   
 
 
 
#  countries <- c("pakistan","somalia","china","japan","korea")
#  i<-1
#  while(i <= length(countries)){
#    if(countries[i]=="somalia"){next}
#    if(countries[i]=="pakistan"){
#    print(paste("Happy independence day ",countries[i]))
#    }else{
#    print(countries[i])
#    }
 
#    i <- i +1
   
#  }
 
 

# matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3) 
# matrix_c 
# dim(matrix_c)

# matrix_a1 <- rbind(matrix_c, c(1:3) )
# matrix_a1
# dim(matrix_a1)


#  matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3) 
# # matrix_c 
# # dim(matrix_c)

# # matrix_a1 <- rbind(matrix_c, c(1:4) )
# matrix_a1 <- cbind(matrix_c, c(1:4) )
# matrix_a1
# dim(matrix_a1)


# matrix_a2 <-matrix(13:24, byrow = TRUE, ncol = 3) 
# matrix_a2;

# matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
# matrix_c;
 
# matrix_d <- cbind(matrix_a2, matrix_c) 
# matrix_d
# dim(matrix_d) 



# matrix_a2 <-matrix(13:24, byrow = TRUE, ncol = 3) 
# matrix_a2;

# matrix_c <-matrix(72:86, byrow = FALSE, ncol = 3)
# matrix_c;
 
# matrix_d <- rbind(matrix_a2, matrix_c) 
# matrix_d

# dim(matrix_d) 

# c <-matrix(1:12, byrow = FALSE, ncol = 3) 
# c
# add_row <-c(1:3);#[1,2,3]  1 X 3

# new_matrix <- cbind(c,add_row)
# new_matrix


# northnazimabad<- c("JI","93")
# bufferzone<- c("ppp","67")
# northkarachi<- c("pti","40")
# baldia<- c("mqm","1")

# print(baldia)


# towns<- matrix(c(northnazimabad,bufferzone,northkarachi,baldia),byrow =TRUE, nrow = 4)
#  towns

# dim(towns)

