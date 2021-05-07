#Cach nhap du lieu vào R
#Nhp so lieu truc tiep :c()
age <- c(50,62, 60,40,48,47,57,70,48,67)
insulin <- c(16.5,10.8,32.3,19.3,14.2,11.3,15.5,15.8,16.2,11.2)
tuan <- data.frame(age, insulin)
tuan

setwd("C:\\Users\\acer\\Downloads")
save(tuan, file="tuan.r?a")

ins <- edit(data.frame())

#Nhap so lieu tu 1 text file:read.table
setwd("C:\\Users\\acer\\Downloads")
chol <- read.table("chol.txt", header = TRUE)
names(chol)
save(chol, file="chol.rda")

#Nhap so lieu tu excel:read.csv
setwd("C:\\Users\\acer\\Downl?ads")
gh <- read.csv("excel.csv", header = TRUE)
save(gh, file="gh.rda")

#Nhap so lieu tu mot SPSS:read.spss
library(foreign)
setwd("C:\\Users\\acer\\Downloads")
testo <- read.spss("testo.sav", to.data.frame=TRUE)
save(testo, file="testo.rda")

#Thong tin?ve du lieu 
attach(chol)
is.data.frame(chol)
dim(chol)
names(chol)
table(sex)

#Tao day so bang ham seq, rep và gl
#Áp d???ng seq
x <- (1:12)
x
seq(12)
#Tao ra mot vector so tu 12 den 5:
x <- (12:5)
x
seq(12,7)

#Tao mot vector so tu 4 den 6 voi khoang cac? bang 0.25:
seq(4, 6, 0.25)
#Tao ra mot vector 10 so, voi so nho nhat là 2 và so lon nhat là 15
seq(length=10, from=2, to=15)

#Áp dung rep
#Tao ra 10, 3 lan:
rep(10, 3)

#Tao ra so tu 1 den 4, 3 lan:
rep(c(1:4), 3)

#Tao ra so 1.2, 2.7, 4.8, 5 lan:
rep(c(?.2, 2.7, 4.8), 5)

rep(c(1.2, 2.7, 4.8), 5) #Tao ra so 1.2, 2.7, 4.8, 5 lan:

#Áp dung gl
gl(2, 8) #Tao ra bi???n g???m b???c 1 và 2; m???i b???c duoc lap lai 8 lan:
gl(3, 5)
#Tao ra bi???n g???m b???c 1 và 2; moi b???c duoc lap lai 10 lan (do dó length=20?:
gl(2, 10, length=20)
gl(2, 2, length=20)

gl(2, 5, label=c("C", "T")) #Cho thêm kí hieu:

#Tao mot bi???n g???m 4 bac 1, 2, 3, 4. Moi bac lap lai 2 lan.
rep(1:4, c(2,2,2,2))
rep(1:4, each = 2)
#V???i ngày gio tháng:
x <- .leap.seconds[1:3]
rep(x, 2)

rep?as.POSIXlt(x), rep(2, 3))

#Biên t???p s??? li???u
#Tách r???i d??? li???u: subset
setwd("C:\\Users\\acer\\Downloads")
chol <- read.table("chol.txt", header=TRUE)
attach(chol)

nam <- subset(chol, sex=="Nam")
nu <- subset(chol, sex=="Nu")
old <- subset(cho?, age>=60)
dim(old)
n60 <- subset(chol, age>=60 & sex=="Nam")
dim(n60)
#Chi???t s??? li???u t??? m???t data .frame
data2 <- chol[, c(1,3,7)]
data3 <- chol[1:10, c(1,3,7)]
print(data3)
#Nh???p hai data.frame thành m???t: merge
d <-merge(d1, d2, by="id", all?TRUE)
d

#Bi???n d???i s??? li???u (data coding)
bmd <- c(-0.92,0.21,0.17,-3.21,-1.80,-2.60,-2.00,1.71,2.12,-2.11)
# t???m th???i cho bi???n s??? diagnosis b???ng bmd
diagnosis <- bmd
# bi???n d???i bmd thành diagnosis
diagnosis[bmd <= -2.5] <- 1
diagnosis?bmd > -2.5 & bmd <= 1.0] <- 2
diagnosis[bmd > -1.0] <- 3
# t???o thành m???t data frame
data <- data.frame(bmd, diagnosis)
# li???t kê d??? ki???m tra xem l???nh có hi???u qu??? không
data
#Bi???n d???i s??? li???u b???ng cách dùng replace
diag <- factor(d?agnosis)
diag
mean(diag)
mean(diagnosis)
#Phân nhóm s??? li???u b???ng cut2 (Hmisc)
# nh???p thu vi???n Hmisc d??? có th??? dùng function cut2
library(Hmisc)
bmd <- c(-0.92,0.21,0.17,-3.21,-1.80,-2.60,-2.00,1.71,2.12,-2.11)
# chia bi???n s??? bmd thành 2 n?óm và d??? trong d???i tu???ng group
group <- cut2(bmd, g=2)
table(group)
group

group <- cut2(bmd, g=3)
table(group)
group
#S??? d???ng R cho các phép tính ma tr???n
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
A

A <- matrix(y, nrow=3, byrow=TRUE)
A
?y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
A
#B = A' có th??? di???n t??? b???ng R nhu sau:
B <- t(A)
B
# t???o ra m??? ma tr???n 3 x 3 v???i t???t c??? ph???n t??? là 0.
A <- matrix(0, 3, 3)
# cho các ph???n t??? du???ng chéo b???ng 1
diag(A) <- 1
d?ag(A)
# bây gi??? ma tr???n A s??? là:
A
#Chi???t ph???n t??? t??? ma tr???n
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
A
# c???t 1 c???a ma tr???n A
A[,1]
# c???t 3 c???a ma tr???n A
A[3,]
# dòng 1 c???a ma tr???n A
A[1,]
# dòng 2, c???t 3 c???a ma ?r???n A
A[2,3]
# t???t c??? các dòng c???a ma tr???n A, ngo???i tr??? dòng 2
A[-2,]
# t???t c??? các c???t c???a ma tr???n A, ngo???i tr??? c???t 1
A[,-1]
# xem ph???n t??? nào cao hon 3.
A>3
#Tính toán v???i ma tr???n
A <- matrix(1:12, 3, 4)
A
B <- matrix?-1:-12, 3, 4)
B
#Chúng ta có th??? c???ng A+B:
C <- A+B
C
#Hay A-B:
D <- A-B
D
#Nhân hai ma tr???n.
y <- c(1,2,3,4,5,6,7,8,9)
A <- matrix(y, nrow=3)
B <- t(A)
AB <- A%*%B
AB
BA <- B%*%A #Hay tính BA, và có th??? tri???n khai b???ng R b???ng cách s??? d???n? %*%
BA
#Ngh???ch d???o ma tr???n và gi???i h??? phuong trình.
A <- matrix(c(3,1,4,6), nrow=2)
Y <- matrix(c(4,2), nrow=2)
X <- solve(A)%*%Y
X
3*X[1,1]+4*X[2,1]
eigen(A)#Tr??? s??? eigen cung có th??? tính toán b???ng function eigen nhu sau:
#D???nh th???c?(determinant).
E <- matrix((1:9), 3, 3)
E
det(E)
#ma tr???n F sau dây thì có th??? d???o ngh???ch:
F <- matrix((1:9)^2, 3, 3)
F
solve(F)#ngh???ch d???o c???a ma tr???n F (F-1) có th??? tính b???ng function solve() nhu sau:
#S??? d???ng R cho tính toán xác ?u???t
#Phép hoán v??? (permutation)
prod(3:1) #Tìm 3!
prod(10:1) #Tìm 10!
prod(10:4) #Tìm 10.9.8.7.6.5.4
prod(10:4) / prod(40:36) #Tìm (10.9.8.7.6.5.4) / (40.39.38.37.36)
#T??? h???p (combination)
choose(5, 2) #choose(5, 2) 
1/choose(5, 2) #Tìm xác su???t ????p A và B trong s??? 5 ngu???i du???c d???c c??? vào hai ch???c v???:

#Hàm phân ph???i nh??? phân (Binomial distribution)
dbinom(2, 3, 0.60)
#Hàm nh??? phân tích luy
1-pbinom(7, 10, 0.70)
#Mô ph???ng hàm nh??? phân:
b <- rbinom(1000, 20, 0.20)
table(b)
?ist(b, main="Number of hypertensive patients")

#Hàm m???t d??? Poisson
dpois(2, 1)
dpois(0, 1)
# P(X ??? 2)
ppois(2, 1)
# 1-P(X ??? 2)
1-ppois(2, 1)
#Hàm m???t d??? phân ph???i chu???n (Normal density probability function).
height <- seq(130, 200, 1)
plot?height, dnorm(height, 156, 4.6),
     type="l",
     ylab="f(height)",
     xlab="Height",
     main="Probability distribution of height in Vietnamese women")

dnorm(160, mean=156, sd=4.6)
#Hàm xác su???t chu???n tích luy (cumulative normal probability fun?tion).
pnorm(150, 156, 4.6)
1-pnorm(164, 156, 4.6)
#???ng d???ng lu???t phân ph???i chu???n:
1-pnorm(120, mean=100, sd=13)
#Hàm phân ph???i chu???n chu???n hóa (Standardized Normal distribution)
height <- seq(-4, 4, 0.1)
plot(height, dnorm(height, 0, 1),
 ?   type="l",
     ylab="f(z)",
     xlab="z",
     main="Probability distribution of height in Vietnamese women")
pnorm(-1.96, mean=0, sd=1)
pnorm(1.96, mean=0, sd=1) #Hay P(z ??? 1.96) = ?
pnorm(1.96) - pnorm(-1.96) #Do dó, P(-1.96 < z < 1.96) chính là:
1?pnorm(3.04)
#Tìm d???nh lu???ng (quantile) c???a m???t phân ph???i chu???n.
qnorm(0.95, mean=0, sd=1)
qnorm(0.975, mean=0, sd=1) #Hay P(Z < z) = 0.975 cho phân ph???i chu???n v???i trung bình 0 và d??? l???ch chu???n 1:
#Ch???n m???u ng???u nhiên (random s?mpling)
sample(1:40, 5)
sample(1:40, 5)
sample(1:50, 10, replace=T)
sample(c("H", "T"), 10, replace=T)
sample(c("X", "D"), 20, replace=T)
sample(5, 10, prob=c(0.3, 0.4, 0.1, 0.1, 0.1), replace=T)
#S??? li???u cho phân tích bi???u d???
