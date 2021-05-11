setwd("C:\\Users\\DUC-PC\\Downloads\\")
O = read.table(file ="Owls.txt", header = TRUE, dec=".")
names(O)
str(O)

#Cau 1
AllNest <- unique(O$ï..Nest)
N <- length(AllNest)

for (i in 1:N){
  Nest.i <- as.character(AllNest[i])
  Oi <- O[O$ï..Nest == Nest.i,]
  name <- Nest.i
  name <- paste(Nest.i,".jpg", sep = "")
  #jpeg(file = AllNest[i])
  plot(x=Oi$ArrivalTime, y = Oi$SiblingNegotiation,
       xlab="Arrival Time", 
       ylab="Sibling Negotiation",
       main = Nest.i)
  dev.off()
}




#Cau 2
O$NestNight <- paste(O$ï..Nest, O$FoodTreatment,sep = "_") 
head(O)
AllNestsNights <- unique(O$NestNight)
N <- length(AllNestsNights)
for (i in 1:N){
  NestNight.i <- as.character(AllNestsNights[i])
  Oi <- O[O$NestNight ==NestNight.i,]
  name <- NestNight.i
  name <- paste(NestNight.i, ".jpg", sep="")
  #jpeg(file = name)
  plot(x=O$ArrivalTime, y=O$NegPerChick,
       xlab ="Arrivale Time",
       ylab = "Sibling Negotiation",
       main = NestNight.i)
}
