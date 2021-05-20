setwd("C:\\Users\\DUC-PC\\Downloads\\")

BFDeaths <- read.table(file = "BirdFluDeaths.txt", header = TRUE)
names(BFDeaths)
str(BFDeaths)
#Thao tác thống kê số Death the năm
Deaths <- rowSums(BFDeaths[,2:16])
names(Deaths)<-BFDeaths[,1]
Deaths


##Thao tác thống kê số Death theo từng nước
Deaths_col <- colSums(BFDeaths[,2:16])
names(Deaths_col) <- names(BFDeaths[,2:16])
Deaths_col

#Vẽ biểu đồ pie chart
#. Biểu đồ chuẩn - standard pie chart
#Dùng để chia màn hình
par(mfrow= c(2,2), mar= c(3,3,2,1))
#mfrow = c(2,2)=> Chia màn hình ra làm 4 góc
#c=(1,4); c=(4,1)
#mar=c(3,3,2,1): khoảng trắng giữa các biểu đồ
#margin: bottom, left, top, right
#Cài gói libary plotrix
install.packages("plotrix")
#Gọi thư viện plotrix
library(plotrix)

pie3D(Deaths, main = "3D Pie Chart",
      explode=0.1,
      labels = names(Deaths),
      labelcex=0.6,
)

pie(Deaths, main = "Total Deaths Per Year",
    col = rainbow(6),
    clockwise = TRUE
)
pie(Deaths_col, main = "Total Deaths Per Country",
    col = rainbow(6),
    names = names(Deaths_col),
    clockwise = TRUE
)
barplot(Deaths_col,
        main = "...",
        xlim= c(0,20),
        ylim = c(0, 120),
        col = "cyan")
Veg <- read.table(file = "Vegetation2.txt", header = TRUE)
names(Veg)
str(Veg)

Richness <- rowSums(Veg[10:13])
names(Richness) <- Veg[,1]
Richness
Veg_new <- data.frame(Richness, Veg$Transect)
colnames(Veg_new)[2] <- "Transect"

V.M <-tapply(Veg_new$Richness, 
                INDEX=Veg_new$Transect, 
                FUN=mean)
V.sd <-tapply(Veg_new$Richness, 
             INDEX=Veg_new$Transect, 
             FUN=sd)
MSD <- cbind(V.M, V.sd)
barplot(V.M)
barplot(V.M, xlab = "Transect",
         ylim = c(0,500),
        ylab = "Richness",
        col = rainbow(8)
)

Vth.le <- tapply(Veg_new$Richness,
                   INDEX=Veg_new$Transect,
                   FUN=length)
V.se <- V.sd/sqrt(Vth.le)

#Strip chart
stripchart(Veg_new$Richness~Veg_new$Transect,
           vert=TRUE,
           pch=1,
           method="jitter",
           jit=0.05,
           xlab="Transect",
           ylab="Richness")

points(1:8, V.M, pch= 16,
       cex=1.5)
arrows(1:9, V.M,
       1:9, V.M+V.se,
       lwd=1.5,
       angle=90,
       length = 0.1)
arrows(1:9, V.M,
       1:9, V.M-V.se,
       lwd=1.5,
       angle=90,
       length = 0.1)

