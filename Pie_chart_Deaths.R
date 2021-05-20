setwd("C:\\Users\\DUC-PC\\Downloads\\")

BFDeaths <- read.table(file = "BirdFluDeaths.txt", header = TRUE)
names(BFDeaths)
str(BFDeaths)
#Thao t??c th???ng k?? s??? Death the n??m
Deaths <- rowSums(BFDeaths[,2:16])
names(Deaths)<-BFDeaths[,1]
Deaths


##Thao t??c th???ng k?? s??? Death theo t???ng n?????c
Deaths_col <- colSums(BFDeaths[,2:16])
names(Deaths_col) <- names(BFDeaths[,2:16])
Deaths_col

#V??? bi???u ????? pie chart
#. Bi???u ????? chu???n - standard pie chart
#D??ng ????? chia m??n h??nh
par(mfrow= c(2,2), mar= c(3,3,2,1))
#mfrow = c(2,2)=> Chia m??n h??nh ra l??m 4 g??c
#c=(1,4); c=(4,1)
#mar=c(3,3,2,1): kho???ng tr???ng gi???a c??c bi???u ?????
#margin: bottom, left, top, right

pie(Deaths, main = "Total Deaths Per Year",
    col = rainbow(6),
    clockwise = TRUE
)
pie(Deaths_col, main = "Total Deaths Per Country",
    col = rainbow(6),
    names = names(Deaths_col),
    clockwise = TRUE
)
barp?ot(Deaths_col,
        main = "...",
        xlim= c(0,20),
        ylim = c(0, 120),
        col = "cyan")
#Strip chart
Veg <- read.table(file = "Vegetation2.txt", header = TRUE)
names(Veg)
str(Veg)

Richness <- rowSums(Veg[10:13])
names(Richness) <- Veg[?1]
Richness
Veg_new <- data.frame(Richness, Veg$Transect)
colnames(Veg_new)[2] <- "Transect"

V.M <-tapply(Veg_new$Richness, 
                INDEX=Veg_new$Transect, 
                FUN=mean)
V.sd <-tapply(Veg_new$Richness, 
             INDEX=Veg_new$Tra?sect, 
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
?                  FUN=length)
V.se <- V.sd/sqrt(Vth.le)

#Strip chart
stripchart(Veg_new$Richness~Veg_new$Transect,
           vert=TRUE,
           pch=1,
           method="jitter",
           jit=0.05,
           xlab="Transect",
           ylab="Richne?s")

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

