# Different types of injury in original datasets were seriously unbalanced 
# which leads to underrepresented situation for several types

#read originial data
origdata <- read.csv('InjuryDeathRecords.csv')

for(i in 1:length(new_sex))
  new_sex[,i] <- as.factor(new_sex[,i])

g40 <- origdata[origdata$CauseRecode39 == 40, ]
data1 <- rbind(origdata, g40)
hist(data1$CauseRecode39)
g38 <- origdata[origdata$CauseRecode39 == 38, ]
data2 <- rbind(data1, g38, g38)
hist(data2$CauseRecode39)
data2 <- rbind(data1, g38)
hist(data2$CauseRecode39)
g41 <- origdata[origdata$CauseRecode39 == 41, ]
data4 <- rbind(data2, g41, g41,g41,g41)
data5 <- rbind(data4, g42, g4,g42,g42, g42, g42)
data6 <- rbind(data5, g42, g42,g42,g42, g42, g42)

data7 <- data6[,c("Id", 
                  "Education2003Revision",
                  "MonthOfDeath", 
                  "Sex",
                  "AgeRecode12", 
                  "MaritalStatus", 
                  "DayOfWeekOfDeath", 
                  "Autopsy", 
                  "Icd10Code", 
                  "CauseRecode113" , 
                  "CauseRecode39" ,
                  "RaceRecode5",
                  "HispanicOriginRaceRecode"  )]
write.csv(data7, "Death_balancedRecode39.csv", row.names = F)
