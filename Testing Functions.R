#pythagorean theorem solving for b (a^2 + b^2 = c^2)
test <- function(a,c) {
  b <- sqrt(c^2 - a^2)
  print(paste(b))
}
test(10, 100)

#Area of a circle (A = pi(r)^2)
test.2 <- function(r) {
  A <- pi*(r^2)
  print(paste(A))
}

test.2(5)

#Finding Standard error with sample size consideration
ds <- c(20,20,21,23,24,25,21,30,27,29,26)
test.3 <- function(ds) {
  error <- (sd(ds))/sqrt(length(ds))
  print(error)
}
test.3(ds)

#Sampling function
random.int <- function(total_numbers_generated) {
  y<-sample(1:100,total_numbers_generated)
  print(y)
}
random.int(1)

#Testing Multiple input, multiple output functions (MIMO)
#Finding if numbers are above or below 50
test.mimo <- function(x) {
  A <- random.int(x)
  below.50 <- A < 50
  above.50 <- A > 50
  result = list("Numers above 50"=above.50, "Numbers below 50" = below.50)
  return(result)  
}
test.mimo(20)

#Z-score function, describes how many standard deviations
#data lies within
z.score <- function(y, ds) {
  z = (y-mean(ds))/sd(ds)
}
mouse.times <- c(10, 9.5, 9.7, 9.4, 9.2, 8.9, 9.9)
mouse.names <- c("1", "2", "3", "4", "5", "6", "7")
mouse.race <- data.frame(mouse.times, mouse.names)
mouse.test <- z.score(mouse.race$mouse.times[1:7], mouse.race$mouse.times)
mouse.test

#Functions with if-else statements
#Check if integer is greater than 50
test.ifelse <- function() {
  x <- random.int(1)
  if (x<50) {
    print("Less than 50")
  }else if(x>50) {
    print("Greater than 50")
  }else {
    print("Equal to 50")
  }
}
test.ifelse()

#for statements
n = 10
test = 0
for(i in seq(1,n,1)) {
  test = test +i
  print(c(i, test))
  #To provide a break if you want to
  if(test > 50) {
    break
  }
}

