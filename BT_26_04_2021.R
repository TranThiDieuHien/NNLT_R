##Bai 1:
#Cau a
answer1 <- 0
for (j in 3:5){ answer1 <- j+answer1 }
answer1

#Cau b
answer2 <- 10
for (j in 3:5){ answer2 <- j+answer2 }
answer2

#Cau c
answer3 <- 10
for (j in 3:5){ answer3 <- j*answer3 }
answer3

##Bai 2
x <- prod(3:5, start = 10)

##Bai?3:
#Cong tat ca cac so tu 1 den 100 theo hai cach khac nhau: 
#su dung for và sum
sum(1:100)
x <- 0
for (i in 1:100) {
  x <- x + i
}
x

#Ham tinh tong tu 1: 100
sum_sequences <- function(x){
  x <- 0
  for (i in 1:100){
    x <- x + i
  }
  return(x)
} 
s?m_sequences(x)

##Bai 4
#Su dung for
answer4 <- 1
for (j in 1:50){ answer4 <- j*answer4 }
#Su dung prod()
prod(1:50, start = 1)

##Bai 5
R <- 3:20
V <- (4*(R**3))/3
Bang_ttich <- data.frame(Radius=R, Volume=V)

##Bai 6
#Dung sapply(..., is.factor), sapply(?.., is.ordered)
sapply(Bang_ttich, is.factor) #kiem tra moi cot co phai factor khong
sapply(Bang_ttich, factor) #chuyen
#or
sapply(Bang_ttich, is.ordered)
#Dung is.ordered or is.factor
is.ordered(Bang_ttich)
#or
is.factor(Bang_ttich)