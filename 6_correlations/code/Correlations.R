
library(tidyverse)
library(tidyr)
library(scales)
library(zoo)
library(ggcorrplot)
library(corrplot)
library(GGally)

#setwd("~/Desktop/BRAZIL_COVID/Science/Correlations")
STR <- read.csv("stringency.csv")
CTN <- read.csv("containment.csv")
HIc <- read.csv("hoover-case.csv")
HId <- read.csv("hoover-death.csv")
PCTc <- read.csv("pct-case.csv")
PCTd <- read.csv("pct-death.csv")
DSTc <- read.csv("distance-case.csv") 
DSTd <- read.csv("distance-death.csv")
SD <- read.csv("social-distancing.csv")
Brazil <- read.csv("Brazil-corr-input.csv")

# 0-BRAZIL
BR <- Brazil
BR <- subset(BR, epi_week>=13) ## when all variables became available
BR$epi_week <- NULL

ggpairs(BR)

#1-AC
AC <- data.frame(epi_week=STR$epi_week, STR = STR$AC, CTN=CTN$AC, SD=SD$AC, HIc=HIc$AC, 
                 HId=HId$AC, PCTc=PCTc$AC*100, PCTd=PCTd$AC*100, DSTc=(DSTc$AC - min(DSTc$AC, na.rm=T))/ (max(DSTc$AC, na.rm=T)-min(DSTc$AC, na.rm=T))*100,
                 DSTd=(DSTd$AC - min(DSTd$AC, na.rm=T))/ (max(DSTd$AC, na.rm=T)-min(DSTd$AC, na.rm=T))*100)
                 # distance is normalized
AC <- subset(AC, epi_week>=15) ## when all variables became available
AC$epi_week <- NULL
ggpairs(AC)

##2-AL
AL <- data.frame(epi_week=STR$epi_week, STR = STR$AL, CTN=CTN$AL, SD=SD$AL, HIc=HIc$AL, 
                 HId=HId$AL, PCTc=PCTc$AL*100, PCTd=PCTd$AL*100, DSTc=(DSTc$AL - min(DSTc$AL, na.rm=T))/ (max(DSTc$AL, na.rm=T)-min(DSTc$AL, na.rm=T))*100,
                 DSTd=(DSTd$AL - min(DSTd$AL, na.rm=T))/ (max(DSTd$AL, na.rm=T)-min(DSTd$AL, na.rm=T))*100)

AL <- subset(AL, epi_week>=14)
AL$epi_week <- NULL
ggpairs(AL)

##3-AM
AM <- data.frame(epi_week=STR$epi_week, STR = STR$AM, CTN=CTN$AM, SD=SD$AM, HIc=HIc$AM, 
                 HId=HId$AM, PCTc=PCTc$AM*100, PCTd=PCTd$AM*100, DSTc=(DSTc$AM - min(DSTc$AM, na.rm=T))/ (max(DSTc$AM, na.rm=T)-min(DSTc$AM, na.rm=T))*100,
                 DSTd=(DSTd$AM - min(DSTd$AM, na.rm=T))/ (max(DSTd$AM, na.rm=T)-min(DSTd$AM, na.rm=T))*100)

AM <- subset(AM, epi_week>=13)
AM$epi_week <- NULL
ggpairs(AM)

##4-AP
AP <- data.frame(epi_week=STR$epi_week, STR = STR$AP, CTN=CTN$AP, SD=SD$AP, HIc=HIc$AP, 
                 HId=HId$AP, PCTc=PCTc$AP*100, PCTd=PCTd$AP*100, DSTc=(DSTc$AP - min(DSTc$AP, na.rm=T))/ (max(DSTc$AP, na.rm=T)-min(DSTc$AP, na.rm=T))*100,
                 DSTd=(DSTd$AP - min(DSTd$AP, na.rm=T))/ (max(DSTd$AP, na.rm=T)-min(DSTd$AP, na.rm=T))*100)

AP <- subset(AP, epi_week>=14)
AP$epi_week <- NULL
ggpairs(AP)

##5-BA
BA <- data.frame(epi_week=STR$epi_week, STR = STR$BA, CTN=CTN$BA, SD=SD$BA, HIc=HIc$BA, 
                 HId=HId$BA, PCTc=PCTc$BA*100, PCTd=PCTd$BA*100, DSTc=(DSTc$BA - min(DSTc$BA, na.rm=T))/ (max(DSTc$BA, na.rm=T)-min(DSTc$BA, na.rm=T))*100,
                 DSTd=(DSTd$BA - min(DSTd$BA, na.rm=T))/ (max(DSTd$BA, na.rm=T)-min(DSTd$BA, na.rm=T))*100)

BA <- subset(BA, epi_week>=14)
BA$epi_week <- NULL
ggpairs(BA)

##6-CE
CE <- data.frame(epi_week=STR$epi_week, STR = STR$CE, CTN=CTN$CE, SD=SD$CE, HIc=HIc$CE, 
                 HId=HId$CE, PCTc=PCTc$CE*100, PCTd=PCTd$CE*100, DSTc=(DSTc$CE - min(DSTc$CE, na.rm=T))/ (max(DSTc$CE, na.rm=T)-min(DSTc$CE, na.rm=T))*100,
                 DSTd=(DSTd$CE - min(DSTd$CE, na.rm=T))/ (max(DSTd$CE, na.rm=T)-min(DSTd$CE, na.rm=T))*100)

CE <- subset(CE, epi_week>=14)
CE$epi_week <- NULL
ggpairs(CE)

##7-DF
DF <- data.frame(epi_week=STR$epi_week, STR = STR$DF, CTN=CTN$DF, SD=SD$DF, HIc=HIc$DF, 
                 HId=HId$DF, PCTc=PCTc$DF*100, PCTd=PCTd$DF*100, DSTc=(DSTc$DF - min(DSTc$DF, na.rm=T))/ (max(DSTc$DF, na.rm=T)-min(DSTc$DF, na.rm=T))*100,
                 DSTd=(DSTd$DF - min(DSTd$DF, na.rm=T))/ (max(DSTd$DF, na.rm=T)-min(DSTd$DF, na.rm=T))*100)

DF <- subset(DF, epi_week>=14)
DF$epi_week <- NULL
DF$HIc <- NULL ## DF does not have Hoover indices or distance measure (single federal district)
DF$HId <- NULL
DF$DSTc <- NULL
DF$DSTd <- NULL

ggpairs(DF)

##-ES
ES <- data.frame(epi_week=STR$epi_week, STR = STR$ES, CTN=CTN$ES, SD=SD$ES, HIc=HIc$ES, 
                 HId=HId$ES, PCTc=PCTc$ES*100, PCTd=PCTd$ES*100, DSTc=(DSTc$ES - min(DSTc$ES, na.rm=T))/ (max(DSTc$ES, na.rm=T)-min(DSTc$ES, na.rm=T))*100,
                 DSTd=(DSTd$ES - min(DSTd$ES, na.rm=T))/ (max(DSTd$ES, na.rm=T)-min(DSTd$ES, na.rm=T))*100)

ES <- subset(ES, epi_week>=14 & epi_week <= 39)
ES$epi_week <- NULL
ggpairs(ES)

##-GO
GO <- data.frame(epi_week=STR$epi_week, STR = STR$GO, CTN=CTN$GO, SD=SD$GO, HIc=HIc$GO, 
                 HId=HId$GO, PCTc=PCTc$GO*100, PCTd=PCTd$GO*100, DSTc=(DSTc$GO - min(DSTc$GO, na.rm=T))/ (max(DSTc$GO, na.rm=T)-min(DSTc$GO, na.rm=T))*100,
                 DSTd=(DSTd$GO - min(DSTd$GO, na.rm=T))/ (max(DSTd$GO, na.rm=T)-min(DSTd$GO, na.rm=T))*100)

GO <- subset(GO, epi_week>=13)
GO$epi_week <- NULL
ggpairs(GO)

##-MA
MA <- data.frame(epi_week=STR$epi_week, STR = STR$MA, CTN=CTN$MA, SD=SD$MA, HIc=HIc$MA, 
                 HId=HId$MA, PCTc=PCTc$MA*100, PCTd=PCTd$MA*100, DSTc=(DSTc$MA - min(DSTc$MA, na.rm=T))/ (max(DSTc$MA, na.rm=T)-min(DSTc$MA, na.rm=T))*100,
                 DSTd=(DSTd$MA - min(DSTd$MA, na.rm=T))/ (max(DSTd$MA, na.rm=T)-min(DSTd$MA, na.rm=T))*100)

MA <- subset(MA, epi_week>=14)
MA$epi_week <- NULL
ggpairs(MA)

##-MG
MG <- data.frame(epi_week=STR$epi_week, STR = STR$MG, CTN=CTN$MG, SD=SD$MG, HIc=HIc$MG, 
                 HId=HId$MG, PCTc=PCTc$MG*100, PCTd=PCTd$MG*100, DSTc=(DSTc$MG - min(DSTc$MG, na.rm=T))/ (max(DSTc$MG, na.rm=T)-min(DSTc$MG, na.rm=T))*100,
                 DSTd=(DSTd$MG - min(DSTd$MG, na.rm=T))/ (max(DSTd$MG, na.rm=T)-min(DSTd$MG, na.rm=T))*100)

MG <- subset(MG, epi_week>=14)
MG$epi_week <- NULL
ggpairs(MG)

##-MS
MS <- data.frame(epi_week=STR$epi_week, STR = STR$MS, CTN=CTN$MS, SD=SD$MS, HIc=HIc$MS, 
                 HId=HId$MS, PCTc=PCTc$MS*100, PCTd=PCTd$MS*100, DSTc=(DSTc$MS - min(DSTc$MS, na.rm=T))/ (max(DSTc$MS, na.rm=T)-min(DSTc$MS, na.rm=T))*100,
                 DSTd=(DSTd$MS - min(DSTd$MS, na.rm=T))/ (max(DSTd$MS, na.rm=T)-min(DSTd$MS, na.rm=T))*100)

MS <- subset(MS, epi_week>=14)
MS$epi_week <- NULL
ggpairs(MS)

##-MT
MT <- data.frame(epi_week=STR$epi_week, STR = STR$MT, CTN=CTN$MT, SD=SD$MT, HIc=HIc$MT, 
                 HId=HId$MT, PCTc=PCTc$MT*100, PCTd=PCTd$MT*100, DSTc=(DSTc$MT - min(DSTc$MT, na.rm=T))/ (max(DSTc$MT, na.rm=T)-min(DSTc$MT, na.rm=T))*100,
                 DSTd=(DSTd$MT - min(DSTd$MT, na.rm=T))/ (max(DSTd$MT, na.rm=T)-min(DSTd$MT, na.rm=T))*100)

MT <- subset(MT, epi_week>=14 & epi_week <=33)
MT$epi_week <- NULL
ggpairs(MT)

##-PA
PA <- data.frame(epi_week=STR$epi_week, STR = STR$PA, CTN=CTN$PA, SD=SD$PA, HIc=HIc$PA, 
                 HId=HId$PA, PCTc=PCTc$PA*100, PCTd=PCTd$PA*100, DSTc=(DSTc$PA - min(DSTc$PA, na.rm=T))/ (max(DSTc$PA, na.rm=T)-min(DSTc$PA, na.rm=T))*100,
                 DSTd=(DSTd$PA - min(DSTd$PA, na.rm=T))/ (max(DSTd$PA, na.rm=T)-min(DSTd$PA, na.rm=T))*100)

PA <- subset(PA, epi_week>=14)
PA$epi_week <- NULL
ggpairs(PA)

##-PB
PB <- data.frame(epi_week=STR$epi_week, STR = STR$PB, CTN=CTN$PB, SD=SD$PB, HIc=HIc$PB, 
                 HId=HId$PB, PCTc=PCTc$PB*100, PCTd=PCTd$PB*100, DSTc=(DSTc$PB - min(DSTc$PB, na.rm=T))/ (max(DSTc$PB, na.rm=T)-min(DSTc$PB, na.rm=T))*100,
                 DSTd=(DSTd$PB - min(DSTd$PB, na.rm=T))/ (max(DSTd$PB, na.rm=T)-min(DSTd$PB, na.rm=T))*100)

PB <- subset(PB, epi_week>=14)
PB$epi_week <- NULL
ggpairs(PB)

##-PE
PE <- data.frame(epi_week=STR$epi_week, STR = STR$PE, CTN=CTN$PE, SD=SD$PE, HIc=HIc$PE, 
                 HId=HId$PE, PCTc=PCTc$PE*100, PCTd=PCTd$PE*100, DSTc=(DSTc$PE - min(DSTc$PE, na.rm=T))/ (max(DSTc$PE, na.rm=T)-min(DSTc$PE, na.rm=T))*100,
                 DSTd=(DSTd$PE - min(DSTd$PE, na.rm=T))/ (max(DSTd$PE, na.rm=T)-min(DSTd$PE, na.rm=T))*100)

PE <- subset(PE, epi_week>=13)
PE$epi_week <- NULL
ggpairs(PE)

##-PI
PI <- data.frame(epi_week=STR$epi_week, STR = STR$PI, CTN=CTN$PI, SD=SD$PI, HIc=HIc$PI, 
                 HId=HId$PI, PCTc=PCTc$PI*100, PCTd=PCTd$PI*100, DSTc=(DSTc$PI - min(DSTc$PI, na.rm=T))/ (max(DSTc$PI, na.rm=T)-min(DSTc$PI, na.rm=T))*100,
                 DSTd=(DSTd$PI - min(DSTd$PI, na.rm=T))/ (max(DSTd$PI, na.rm=T)-min(DSTd$PI, na.rm=T))*100)

PI <- subset(PI, epi_week>=13)
PI$epi_week <- NULL
ggpairs(PI)

##-PR
PR <- data.frame(epi_week=STR$epi_week, STR = STR$PR, CTN=CTN$PR, SD=SD$PR, HIc=HIc$PR, 
                 HId=HId$PR, PCTc=PCTc$PR*100, PCTd=PCTd$PR*100, DSTc=(DSTc$PR - min(DSTc$PR, na.rm=T))/ (max(DSTc$PR, na.rm=T)-min(DSTc$PR, na.rm=T))*100,
                 DSTd=(DSTd$PR - min(DSTd$PR, na.rm=T))/ (max(DSTd$PR, na.rm=T)-min(DSTd$PR, na.rm=T))*100)

PR <- subset(PR, epi_week>=13)
PR$epi_week <- NULL
ggpairs(PR)

##-RJ
RJ <- data.frame(epi_week=STR$epi_week, STR = STR$RJ, CTN=CTN$RJ, SD=SD$RJ, HIc=HIc$RJ, 
                 HId=HId$RJ, PCTc=PCTc$RJ*100, PCTd=PCTd$RJ*100, DSTc=(DSTc$RJ - min(DSTc$RJ, na.rm=T))/ (max(DSTc$RJ, na.rm=T)-min(DSTc$RJ, na.rm=T))*100,
                 DSTd=(DSTd$RJ - min(DSTd$RJ, na.rm=T))/ (max(DSTd$RJ, na.rm=T)-min(DSTd$RJ, na.rm=T))*100)

RJ <- subset(RJ, epi_week>=12)
RJ$epi_week <- NULL
ggpairs(RJ)

##-RN
RN <- data.frame(epi_week=STR$epi_week, STR = STR$RN, CTN=CTN$RN, SD=SD$RN, HIc=HIc$RN, 
                 HId=HId$RN, PCTc=PCTc$RN*100, PCTd=PCTd$RN*100, DSTc=(DSTc$RN - min(DSTc$RN, na.rm=T))/ (max(DSTc$RN, na.rm=T)-min(DSTc$RN, na.rm=T))*100,
                 DSTd=(DSTd$RN - min(DSTd$RN, na.rm=T))/ (max(DSTd$RN, na.rm=T)-min(DSTd$RN, na.rm=T))*100)

RN <- subset(RN, epi_week>=13)
RN$epi_week <- NULL
ggpairs(RN)

##-RO
RO <- data.frame(epi_week=STR$epi_week, STR = STR$RO, CTN=CTN$RO, SD=SD$RO, HIc=HIc$RO, 
                 HId=HId$RO, PCTc=PCTc$RO*100, PCTd=PCTd$RO*100, DSTc=(DSTc$RO - min(DSTc$RO, na.rm=T))/ (max(DSTc$RO, na.rm=T)-min(DSTc$RO, na.rm=T))*100,
                 DSTd=(DSTd$RO - min(DSTd$RO, na.rm=T))/ (max(DSTd$RO, na.rm=T)-min(DSTd$RO, na.rm=T))*100)

RO <- subset(RO, epi_week>=14)
RO$epi_week <- NULL
ggpairs(RO)

##-RR
RR <- data.frame(epi_week=STR$epi_week, STR = STR$RR, CTN=CTN$RR, SD=SD$RR, HIc=HIc$RR, 
                 HId=HId$RR, PCTc=PCTc$RR*100, PCTd=PCTd$RR*100, DSTc=(DSTc$RR - min(DSTc$RR, na.rm=T))/ (max(DSTc$RR, na.rm=T)-min(DSTc$RR, na.rm=T))*100,
                 DSTd=(DSTd$RR - min(DSTd$RR, na.rm=T))/ (max(DSTd$RR, na.rm=T)-min(DSTd$RR, na.rm=T))*100)

RR <- subset(RR, epi_week>=14 & epi_week != 16)
RR$epi_week <- NULL
RR$CTN <- NULL

ggpairs(RR)

##-RS
RS <- data.frame(epi_week=STR$epi_week, STR = STR$RS, CTN=CTN$RS, SD=SD$RS, HIc=HIc$RS, 
                 HId=HId$RS, PCTc=PCTc$RS*100, PCTd=PCTd$RS*100, DSTc=(DSTc$RS - min(DSTc$RS, na.rm=T))/ (max(DSTc$RS, na.rm=T)-min(DSTc$RS, na.rm=T))*100,
                 DSTd=(DSTd$RS - min(DSTd$RS, na.rm=T))/ (max(DSTd$RS, na.rm=T)-min(DSTd$RS, na.rm=T))*100)

RS <- subset(RS, epi_week>=13)
RS$epi_week <- NULL
ggpairs(RS)

##-SC
SC <- data.frame(epi_week=STR$epi_week, STR = STR$SC, CTN=CTN$SC, SD=SD$SC, HIc=HIc$SC, 
                 HId=HId$SC, PCTc=PCTc$SC*100, PCTd=PCTd$SC*100, DSTc=(DSTc$SC - min(DSTc$SC, na.rm=T))/ (max(DSTc$SC, na.rm=T)-min(DSTc$SC, na.rm=T))*100,
                 DSTd=(DSTd$SC - min(DSTd$SC, na.rm=T))/ (max(DSTd$SC, na.rm=T)-min(DSTd$SC, na.rm=T))*100)

SC <- subset(SC, epi_week>=13)
SC$epi_week <- NULL
ggpairs(SC)

##-SE
SE <- data.frame(epi_week=STR$epi_week, STR = STR$SE, CTN=CTN$SE, SD=SD$SE, HIc=HIc$SE, 
                 HId=HId$SE, PCTc=PCTc$SE*100, PCTd=PCTd$SE*100, DSTc=(DSTc$SE - min(DSTc$SE, na.rm=T))/ (max(DSTc$SE, na.rm=T)-min(DSTc$SE, na.rm=T))*100,
                 DSTd=(DSTd$SE - min(DSTd$SE, na.rm=T))/ (max(DSTd$SE, na.rm=T)-min(DSTd$SE, na.rm=T))*100)

SE <- subset(SE, epi_week>=14)
SE$epi_week <- NULL
ggpairs(SE)

##-SP
SP <- data.frame(epi_week=STR$epi_week, STR = STR$SP, CTN=CTN$SP, SD=SD$SP, HIc=HIc$SP, 
                 HId=HId$SP, PCTc=PCTc$SP*100, PCTd=PCTd$SP*100, DSTc=(DSTc$SP - min(DSTc$SP, na.rm=T))/ (max(DSTc$SP, na.rm=T)-min(DSTc$SP, na.rm=T))*100,
                 DSTd=(DSTd$SP - min(DSTd$SP, na.rm=T))/ (max(DSTd$SP, na.rm=T)-min(DSTd$SP, na.rm=T))*100)

SP <- subset(SP, epi_week>=12)
SP$epi_week <- NULL
ggpairs(SP)

##-TO
TO <- data.frame(epi_week=STR$epi_week, STR = STR$TO, CTN=CTN$TO, SD=SD$TO, HIc=HIc$TO, 
                 HId=HId$TO, PCTc=PCTc$TO*100, PCTd=PCTd$TO*100, DSTc=(DSTc$TO - min(DSTc$TO, na.rm=T))/ (max(DSTc$TO, na.rm=T)-min(DSTc$TO, na.rm=T))*100,
                 DSTd=(DSTd$TO - min(DSTd$TO, na.rm=T))/ (max(DSTd$TO, na.rm=T)-min(DSTd$TO, na.rm=T))*100)

TO <- subset(TO, epi_week>=16)
TO$epi_week <- NULL
ggpairs(TO) 
