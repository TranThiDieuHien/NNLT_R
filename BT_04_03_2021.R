wing1 <-59
wing2 <-55
wing3 <-53.5
wing4 <-55
wing5 <-52.5
wing6 <-57.5
wing7 <-53
wing8 <-55
sqrt(wing1)
2*wing1
wing1+wing2+wing5
wing1*3-wing6/4+wing8*2
SQ.wing1 <-sqrt(wing1)
SQ.wing1
Wingcrd <- c(59, 55, 53.5, 55, 52.5, 57.5, 53, 55)
Wingcrd
#Hàm c là?hàm t???o 1 vector
Wingcrd[1] #Truy c???p ph???n t??? trong vector theo s??? th???
#t??? t??? 1 tr??? di.C/C++/VBA/Java/PHP/C# - 0
Wingcrd[5]
#Li???t kê các ph???n t??? t??? 1 d???n 5 c???a vector
Wingcrd[1:5]
Wingcrd[2:8]
Wingcrd[-2]
#Th???c hi???n các phép toán trên vector
#sum, mean, max, min, median, var, sd
sum(Wingcrd)
59+55+53.5+55+52.5+57.5+53+55
mean(Wingcrd)
max(Wingcrd)
min(Wingcrd)
median(Wingcrd)

Bien <- sum(Wingcrd)
Wingcrd
Tarsus <- c(22.3, 19.7, 20.8, 20.3, 20.8, 21.5, 20.6, 21.5)
H?ad <- c(31.2, 30.4, 30.6, 30.3, 30.3, 30.8, 32.5, NA)
Wt <- c(9.5, 13.8,14.8, 15.2, 15.5, 15.6, 15.6, 15.7)
sum(Head)
# Mu???n tính t???ng c???a Head mà lo???i ra các bi???n NA
sum(Head,na.rm=TRUE)
#na: not available;
sum(Head,na.rm=FALSE)

#T???o ra 1 vector có chi???u dài là 32 (4x8)
Birdata <-c(Wingcrd, Tarsus, Head, Wt)
Birdata
Id <-c(1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4)
Id <- rep(c(1,2,3,4), each=8)
Id <- rep(1:4, each=8)
a<-seq(from=1, to=4, by=1)
a
rep(a, each=8)
VarNames <- c("Wingcrd?, "Tarsus", "Head", "Wt")
VarNames
Id2 <-rep(VarNames, each=8)
Id2
#Hàm c k???t n???i d??? li???u gi???a các bi???n v???i nhau
#Bi???u di???n theo d???ng c???t
#cbind d??? k???t n???i s??? li???u theo d???ng c???t - c - column
Z <- cbind(Wingcrd, Tarsus, Head, Wt)
Z
#l???y s??? li???u c???a c???t 1
Z[,2]
#L???y s??? li???u trong kho???ng t??? m:n c???a c???t x [m:n,x]
Z[2:5,2]
#L???y s??? li???u ??? dòng s??? 2
Z[2,]
# l???y s??? li???u ??? dòng s??? 2, c???t 1 và 2
Z[2,1:2]
Z[2,c(1,4)]
Z[c(1,5,8), c(2,4)]
#D??? bi???t du???c ma tr???n Z này có m???y hàng, c???t
dim(Z)
nrow<- dim(Z)[1]
nrow
ncol<- dim(Z)[2]
ncol
# Hàm rbind k???t n???i các vector theo hàng - r - row

Z2 <- rbind(Wingcrd, Tarsus, Head, Wt)
Z2
# S??? d???ng hàm vector d??? k???t n???i s??? li???u
W <- vector(length = 8)
W[1] <- 59
W[2] <-55
# S??? d???ng hàm ma tr???n d??? k???t n???i d??? li???u
Dmat <- matrix(nrow = 8, ncol = 4)
Dmat
Dmat[,1] <- c(59, 55, 53.5, 55, 52.5, 57.5, 53, 55)
Dmat[,2] <-c(22.3, 19.7, 20.8, 20.3, 20.8, 21.5, 20.6, 21.5)
Dmat[,3] <-c(31.2, 30.4, 30.6, 30.3, 30.3, 30.8, 32.5, NA)
Dmat[,4] <-c(9.5, 13.8,14.8, 15.2, 15.5, 1?.6, 15.6, 15.7)
colnames(Dmat) <- c("Wingcrd","Tarsus","Head","Wt")

#Cách 2 d??? khai báo d??? li???u ma tr???n
Dmat2 <- as.matrix(cbind(Wingcrd, Tarsus, Head, Wt))
Dmat2


# S??? d???ng hàm data.frame d??? k???t n???i s??? li???u
Dfrm <- data.frame(WC= Wingcrd, TS=Tarsus, HD=Head, W=Wt)
Dfrm
Dfrm <- data.frame(WC= Wingcrd, TS=Tarsus, HD=Head, W=Wt, Wsq =sqrt(Wt))
# K???t n???i d??? li???u b???ng hàm list function
x1 <- c(1,2,3)
x2 <- c("a", "b", "c","d")
x3 <- 3
x4 <- matrix(nrow = 2, ncol = 2)
x4 [,1] <-c(1,2)
x4[,2] <- c(3,4)
Y <- list(x1=x1, x2=x2, x3=x3, x4=x4)
Y



AllData <- list(Birdata= Birdata, Id=Id2, Z=Z, VarNames= VarNames)
AllData