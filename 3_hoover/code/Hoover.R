## Brazil Hoover
library(tidyverse)

#setwd("~/Desktop/BRAZIL_COVID/Science/Hoover")

data <- read.csv("Weekly.Cases.Deaths.csv")
data <- data %>% group_by(state_code, ibge_code, epidemiological_week, population) %>%
  summarize(weekly.cases = sum(daily.cases), weekly.deaths = sum(daily.deaths))

popdata <- read.csv("Population.csv")
popdata$state_code <- substr(popdata$ibge_code, 1,2)

## Location Hoover calulator function
Hoover.index <- function (mat, pop) {
  
  mat = as.matrix (mat)
  
  if (missing(pop)) {
    pop = 1/nrow(mat)
  }
  
  HG <- function(mat, pop, col = 1) {
    
    ind <- mat[,1]
    pop <- pop
    c = data.frame (ind, pop)
    c = c[complete.cases(c),]
    ind = c$ind
    pop = c$pop
    ind = ind/sum(ind)
    pop = pop/sum(pop)
    s = abs (ind - pop)
    s = sum (s)
    s = s*100
    s = round ((s/2), digits = 2)
    
    
  }
  
  if (ncol(mat) == 1) {
    x = HG (mat, pop)
  } else {
    
    y  <- NULL;
    for (i in unique(1:ncol(mat)))
    {
      tmp <- HG (mat, pop, i)
      y <- rbind(y, tmp)
    }
    
    x = data.frame (colnames (mat),  y[,1])
    colnames (x) = c ("Month", "Brazil.Hoover.index")
    
  }
  
  return (x)
  
}

## choose state code (e.g., GO state: state code = 52)
data <- subset(data, data$state_code==52)
popdata <- subset(popdata, popdata$state_code==52)

pop <- as.numeric(as.vector(popdata[,2]))

wk9 <- subset(data, epidemiological_week==9)
wk10 <- subset(data, epidemiological_week==10)
wk11 <- subset(data, epidemiological_week==11)
wk12 <- subset(data, epidemiological_week==12)
wk13 <- subset(data, epidemiological_week==13)
wk14 <- subset(data, epidemiological_week==14)
wk15 <- subset(data, epidemiological_week==15)
wk16 <- subset(data, epidemiological_week==16)
wk17 <- subset(data, epidemiological_week==17)
wk18 <- subset(data, epidemiological_week==18)
wk19 <- subset(data, epidemiological_week==19)
wk20 <- subset(data, epidemiological_week==20)
wk21 <- subset(data, epidemiological_week==21)
wk22 <- subset(data, epidemiological_week==22)
wk23 <- subset(data, epidemiological_week==23)
wk24 <- subset(data, epidemiological_week==24)
wk25 <- subset(data, epidemiological_week==25)
wk26 <- subset(data, epidemiological_week==26)
wk27 <- subset(data, epidemiological_week==27)
wk28 <- subset(data, epidemiological_week==28)
wk29 <- subset(data, epidemiological_week==29)
wk30 <- subset(data, epidemiological_week==30)
wk31 <- subset(data, epidemiological_week==31)
wk32 <- subset(data, epidemiological_week==32)
wk33 <- subset(data, epidemiological_week==33)
wk34 <- subset(data, epidemiological_week==34)
wk35 <- subset(data, epidemiological_week==35)
wk36 <- subset(data, epidemiological_week==36)
wk37 <- subset(data, epidemiological_week==37)
wk38 <- subset(data, epidemiological_week==38)
wk39 <- subset(data, epidemiological_week==39)
wk40 <- subset(data, epidemiological_week==40)
wk41 <- subset(data, epidemiological_week==41)

wk9case <- wk9 %>% group_by(ibge_code) %>% summarize(wk9=weekly.cases)
wk10case <- wk10 %>% group_by(ibge_code) %>% summarize(wk10=weekly.cases)
wk11case <- wk11 %>% group_by(ibge_code) %>% summarize(wk11=weekly.cases)
wk12case <- wk12 %>% group_by(ibge_code) %>% summarize(wk12=weekly.cases)
wk13case <- wk13 %>% group_by(ibge_code) %>% summarize(wk13=weekly.cases)
wk14case <- wk14 %>% group_by(ibge_code) %>% summarize(wk14=weekly.cases)
wk15case <- wk15 %>% group_by(ibge_code) %>% summarize(wk15=weekly.cases)
wk16case <- wk16 %>% group_by(ibge_code) %>% summarize(wk16=weekly.cases)
wk17case <- wk17 %>% group_by(ibge_code) %>% summarize(wk17=weekly.cases)
wk18case <- wk18 %>% group_by(ibge_code) %>% summarize(wk18=weekly.cases)
wk19case <- wk19 %>% group_by(ibge_code) %>% summarize(wk19=weekly.cases)
wk20case <- wk20 %>% group_by(ibge_code) %>% summarize(wk20=weekly.cases)
wk21case <- wk21 %>% group_by(ibge_code) %>% summarize(wk21=weekly.cases)
wk22case <- wk22 %>% group_by(ibge_code) %>% summarize(wk22=weekly.cases)
wk23case <- wk23 %>% group_by(ibge_code) %>% summarize(wk23=weekly.cases)
wk24case <- wk24 %>% group_by(ibge_code) %>% summarize(wk24=weekly.cases)
wk25case <- wk25 %>% group_by(ibge_code) %>% summarize(wk25=weekly.cases)
wk26case <- wk26 %>% group_by(ibge_code) %>% summarize(wk26=weekly.cases)
wk27case <- wk27 %>% group_by(ibge_code) %>% summarize(wk27=weekly.cases)
wk28case <- wk28 %>% group_by(ibge_code) %>% summarize(wk28=weekly.cases)
wk29case <- wk29 %>% group_by(ibge_code) %>% summarize(wk29=weekly.cases)
wk30case <- wk30 %>% group_by(ibge_code) %>% summarize(wk30=weekly.cases)
wk31case <- wk31 %>% group_by(ibge_code) %>% summarize(wk31=weekly.cases)
wk32case <- wk32 %>% group_by(ibge_code) %>% summarize(wk32=weekly.cases)
wk33case <- wk33 %>% group_by(ibge_code) %>% summarize(wk33=weekly.cases)
wk34case <- wk34 %>% group_by(ibge_code) %>% summarize(wk34=weekly.cases)
wk35case <- wk35 %>% group_by(ibge_code) %>% summarize(wk35=weekly.cases)
wk36case <- wk36 %>% group_by(ibge_code) %>% summarize(wk36=weekly.cases)
wk37case <- wk37 %>% group_by(ibge_code) %>% summarize(wk37=weekly.cases)
wk38case <- wk38 %>% group_by(ibge_code) %>% summarize(wk38=weekly.cases)
wk39case <- wk39 %>% group_by(ibge_code) %>% summarize(wk39=weekly.cases)
wk40case <- wk40 %>% group_by(ibge_code) %>% summarize(wk40=weekly.cases)
wk41case <- wk41 %>% group_by(ibge_code) %>% summarize(wk41=weekly.cases)

mat1 <- merge(wk40case, wk41case, by = "ibge_code", all = TRUE) ##merging data frames
mat2 <- merge(wk39case, mat1, by = "ibge_code", all = TRUE)
mat3 <- merge(wk38case, mat2, by = "ibge_code", all = TRUE)
mat4 <- merge(wk37case, mat3, by = "ibge_code", all = TRUE)
mat5 <- merge(wk36case, mat4, by = "ibge_code", all = TRUE)
mat6 <- merge(wk35case, mat5, by = "ibge_code", all = TRUE)
mat7 <- merge(wk34case, mat6, by = "ibge_code", all = TRUE)
mat8 <- merge(wk33case, mat7, by = "ibge_code", all = TRUE)
mat9 <- merge(wk32case, mat8, by = "ibge_code", all = TRUE)
mat10 <- merge(wk31case, mat9, by = "ibge_code", all = TRUE)
mat11 <- merge(wk30case, mat10, by = "ibge_code", all = TRUE)
mat12 <- merge(wk29case, mat11, by = "ibge_code", all = TRUE)
mat13 <- merge(wk28case, mat12, by = "ibge_code", all = TRUE)
mat14 <- merge(wk27case, mat13, by = "ibge_code", all = TRUE)
mat15 <- merge(wk26case, mat14, by = "ibge_code", all = TRUE)
mat16 <- merge(wk25case, mat15, by = "ibge_code", all = TRUE)
mat17 <- merge(wk24case, mat16, by = "ibge_code", all = TRUE)
mat18 <- merge(wk23case, mat17, by = "ibge_code", all = TRUE)
mat19 <- merge(wk22case, mat18, by = "ibge_code", all = TRUE)
mat20 <- merge(wk21case, mat19, by = "ibge_code", all = TRUE)
mat21 <- merge(wk20case, mat20, by = "ibge_code", all = TRUE)
mat22 <- merge(wk19case, mat21, by = "ibge_code", all = TRUE)
mat23 <- merge(wk18case, mat22, by = "ibge_code", all = TRUE)
mat24 <- merge(wk17case, mat23, by = "ibge_code", all = TRUE)
mat25 <- merge(wk16case, mat24, by = "ibge_code", all = TRUE)
mat26 <- merge(wk15case, mat25, by = "ibge_code", all = TRUE)
mat27 <- merge(wk14case, mat26, by = "ibge_code", all = TRUE)
mat28 <- merge(wk13case, mat27, by = "ibge_code", all = TRUE)
mat29 <- merge(wk12case, mat28, by = "ibge_code", all = TRUE)
mat30 <- merge(wk11case, mat29, by = "ibge_code", all = TRUE)
mat31 <- merge(wk10case, mat30, by = "ibge_code", all = TRUE)
mat32 <- merge(wk9case, mat31, by = "ibge_code", all = TRUE)

mat32[is.na(mat32)]<-0 ## NA: weeks without cases -> 0 cases
mat32$ibge_code <- NULL

rownames(mat32) <- as.numeric(as.vector(popdata[,1]))

mat33 <- data.matrix(mat32) ## make data frame as matrix to use the function below


c9 <- Hoover.index (mat33[,1], pop) ## wk 9 Hoover index 
c10 <- Hoover.index (mat33[,2], pop) ## wk 10 Hoover index 
c11 <- Hoover.index (mat33[,3], pop) ## wk 11 
c12 <- Hoover.index (mat33[,4], pop) ## wk 12 
c13 <- Hoover.index (mat33[,5], pop) ## wk 13 
c14 <- Hoover.index (mat33[,6], pop) ## wk 14 
c15 <- Hoover.index (mat33[,7], pop) ## wk 15
c16 <- Hoover.index (mat33[,8], pop) ## wk 16 
c17 <- Hoover.index (mat33[,9], pop) ## wk 17 
c18 <- Hoover.index (mat33[,10], pop) ## wk 18 
c19 <- Hoover.index (mat33[,11], pop) ## wk 19 
c20 <- Hoover.index (mat33[,12], pop) ## wk 20 
c21 <- Hoover.index (mat33[,13], pop) ## wk 21 
c22 <- Hoover.index (mat33[,14], pop) ## wk 22 
c23 <- Hoover.index (mat33[,15], pop) ## wk 23 
c24 <- Hoover.index (mat33[,16], pop) ## wk 24 
c25 <- Hoover.index (mat33[,17], pop) ## wk 25 
c26 <- Hoover.index (mat33[,18], pop) ## wk 26 
c27 <- Hoover.index (mat33[,19], pop) ## wk 27 
c28 <- Hoover.index (mat33[,20], pop) ## wk 28
c29 <- Hoover.index (mat33[,21], pop) ## wk 29
c30 <- Hoover.index (mat33[,22], pop) ## wk 30
c31 <- Hoover.index (mat33[,23], pop) ## wk 31
c32 <- Hoover.index (mat33[,24], pop) ## wk 32
c33 <- Hoover.index (mat33[,25], pop) ## wk 33
c34 <- Hoover.index (mat33[,26], pop) ## wk 34 
c35 <- Hoover.index (mat33[,27], pop) ## wk 35 
c36 <- Hoover.index (mat33[,28], pop) ## wk 36 
c37 <- Hoover.index (mat33[,29], pop) ## wk 37 
c38 <- Hoover.index (mat33[,30], pop) ## wk 38
c39 <- Hoover.index (mat33[,31], pop) ## wk 39
c40 <- Hoover.index (mat33[,32], pop) ## wk 40
c41 <- Hoover.index (mat33[,33], pop) ## wk 41

hoovercase <- data.frame(c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,
                         c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41)


##### Deaths#########
wk9death <- wk9 %>% group_by(ibge_code) %>% summarize(wk9=weekly.deaths)
wk10death <- wk10 %>% group_by(ibge_code) %>% summarize(wk10=weekly.deaths)
wk11death <- wk11 %>% group_by(ibge_code) %>% summarize(wk11=weekly.deaths)
wk12death <- wk12 %>% group_by(ibge_code) %>% summarize(wk12=weekly.deaths)
wk13death <- wk13 %>% group_by(ibge_code) %>% summarize(wk13=weekly.deaths)
wk14death <- wk14 %>% group_by(ibge_code) %>% summarize(wk14=weekly.deaths)
wk15death <- wk15 %>% group_by(ibge_code) %>% summarize(wk15=weekly.deaths)
wk16death <- wk16 %>% group_by(ibge_code) %>% summarize(wk16=weekly.deaths)
wk17death <- wk17 %>% group_by(ibge_code) %>% summarize(wk17=weekly.deaths)
wk18death <- wk18 %>% group_by(ibge_code) %>% summarize(wk18=weekly.deaths)
wk19death <- wk19 %>% group_by(ibge_code) %>% summarize(wk19=weekly.deaths)
wk20death <- wk20 %>% group_by(ibge_code) %>% summarize(wk20=weekly.deaths)
wk21death <- wk21 %>% group_by(ibge_code) %>% summarize(wk21=weekly.deaths)
wk22death <- wk22 %>% group_by(ibge_code) %>% summarize(wk22=weekly.deaths)
wk23death <- wk23 %>% group_by(ibge_code) %>% summarize(wk23=weekly.deaths)
wk24death <- wk24 %>% group_by(ibge_code) %>% summarize(wk24=weekly.deaths)
wk25death <- wk25 %>% group_by(ibge_code) %>% summarize(wk25=weekly.deaths)
wk26death <- wk26 %>% group_by(ibge_code) %>% summarize(wk26=weekly.deaths)
wk27death <- wk27 %>% group_by(ibge_code) %>% summarize(wk27=weekly.deaths)
wk28death <- wk28 %>% group_by(ibge_code) %>% summarize(wk28=weekly.deaths)
wk29death <- wk29 %>% group_by(ibge_code) %>% summarize(wk29=weekly.deaths)
wk30death <- wk30 %>% group_by(ibge_code) %>% summarize(wk30=weekly.deaths)
wk31death <- wk31 %>% group_by(ibge_code) %>% summarize(wk31=weekly.deaths)
wk32death <- wk32 %>% group_by(ibge_code) %>% summarize(wk32=weekly.deaths)
wk33death <- wk33 %>% group_by(ibge_code) %>% summarize(wk33=weekly.deaths)
wk34death <- wk34 %>% group_by(ibge_code) %>% summarize(wk34=weekly.deaths)
wk35death <- wk35 %>% group_by(ibge_code) %>% summarize(wk35=weekly.deaths)
wk36death <- wk36 %>% group_by(ibge_code) %>% summarize(wk36=weekly.deaths)
wk37death <- wk37 %>% group_by(ibge_code) %>% summarize(wk37=weekly.deaths)
wk38death <- wk38 %>% group_by(ibge_code) %>% summarize(wk38=weekly.deaths)
wk39death <- wk39 %>% group_by(ibge_code) %>% summarize(wk39=weekly.deaths)
wk40death <- wk40 %>% group_by(ibge_code) %>% summarize(wk40=weekly.deaths)
wk41death <- wk41 %>% group_by(ibge_code) %>% summarize(wk41=weekly.deaths)

mat41 <- merge(wk40death, wk41death, by = "ibge_code", all = TRUE) ##merging data frames
mat42 <- merge(wk39death, mat41, by = "ibge_code", all = TRUE)
mat43 <- merge(wk38death, mat42, by = "ibge_code", all = TRUE)
mat44 <- merge(wk37death, mat43, by = "ibge_code", all = TRUE)
mat45 <- merge(wk36death, mat44, by = "ibge_code", all = TRUE)
mat46 <- merge(wk35death, mat45, by = "ibge_code", all = TRUE)
mat47 <- merge(wk34death, mat46, by = "ibge_code", all = TRUE)
mat48 <- merge(wk33death, mat47, by = "ibge_code", all = TRUE)
mat49 <- merge(wk32death, mat48, by = "ibge_code", all = TRUE)
mat50 <- merge(wk31death, mat49, by = "ibge_code", all = TRUE)
mat51 <- merge(wk30death, mat50, by = "ibge_code", all = TRUE)
mat52 <- merge(wk29death, mat51, by = "ibge_code", all = TRUE)
mat53 <- merge(wk28death, mat52, by = "ibge_code", all = TRUE)
mat54 <- merge(wk27death, mat53, by = "ibge_code", all = TRUE)
mat55 <- merge(wk26death, mat54, by = "ibge_code", all = TRUE)
mat56 <- merge(wk25death, mat55, by = "ibge_code", all = TRUE)
mat57 <- merge(wk24death, mat56, by = "ibge_code", all = TRUE)
mat58 <- merge(wk23death, mat57, by = "ibge_code", all = TRUE)
mat59 <- merge(wk22death, mat58, by = "ibge_code", all = TRUE)
mat60 <- merge(wk21death, mat59, by = "ibge_code", all = TRUE)
mat61 <- merge(wk20death, mat60, by = "ibge_code", all = TRUE)
mat62 <- merge(wk19death, mat61, by = "ibge_code", all = TRUE)
mat63 <- merge(wk18death, mat62, by = "ibge_code", all = TRUE)
mat64 <- merge(wk17death, mat63, by = "ibge_code", all = TRUE)
mat65 <- merge(wk16death, mat64, by = "ibge_code", all = TRUE)
mat66 <- merge(wk15death, mat65, by = "ibge_code", all = TRUE)
mat67 <- merge(wk14death, mat66, by = "ibge_code", all = TRUE)
mat68 <- merge(wk13death, mat67, by = "ibge_code", all = TRUE)
mat69 <- merge(wk12death, mat68, by = "ibge_code", all = TRUE)
mat70 <- merge(wk11death, mat69, by = "ibge_code", all = TRUE)
mat71 <- merge(wk10death, mat70, by = "ibge_code", all = TRUE)
mat72 <- merge(wk9death, mat71, by = "ibge_code", all = TRUE)

mat72[is.na(mat72)]<-0
mat72$ibge_code <- NULL

rownames(mat72) <- as.numeric(as.vector(popdata[,1]))
mat73 <- data.matrix(mat72) ## make data frame as matrix to use the function below

d9 <- Hoover.index (mat73[,1], pop) ## wk 9 Hoover index
d10 <-Hoover.index (mat73[,2], pop) ## wk 10 Hoover index
d11 <-Hoover.index (mat73[,3], pop) ## wk 11 Hoover index 
d12 <-Hoover.index (mat73[,4], pop) ## wk 12 Hoover index 
d13 <-Hoover.index (mat73[,5], pop) ## wk 13 Hoover index 
d14 <-Hoover.index (mat73[,6], pop) ## wk 14 Hoover index 
d15 <-Hoover.index (mat73[,7], pop) ## wk 15 Hoover index 
d16 <-Hoover.index (mat73[,8], pop) ## wk 16 Hoover index
d17 <-Hoover.index (mat73[,9], pop) ## wk 17 Hoover index  
d18 <-Hoover.index (mat73[,10], pop) ## wk 18 Hoover index  
d19 <-Hoover.index (mat73[,11], pop) ## wk 19 Hoover index  
d20 <-Hoover.index (mat73[,12], pop) ## wk 20 Hoover index  
d21 <-Hoover.index (mat73[,13], pop) ## wk 21 Hoover index  
d22 <-Hoover.index (mat73[,14], pop) ## wk 22 Hoover index  
d23 <-Hoover.index (mat73[,15], pop) ## wk 23 Hoover index  
d24 <-Hoover.index (mat73[,16], pop) ## wk 24 
d25 <-Hoover.index (mat73[,17], pop) ## wk 25  
d26 <-Hoover.index (mat73[,18], pop) ## wk 26 
d27 <-Hoover.index (mat73[,19], pop) ## wk 27 
d28 <-Hoover.index (mat73[,20], pop) ## wk 28
d29 <-Hoover.index (mat73[,21], pop) ## wk 29
d30 <-Hoover.index (mat73[,22], pop) ## wk 30
d31 <-Hoover.index (mat73[,23], pop) ## wk 31
d32 <-Hoover.index (mat73[,24], pop) ## wk 32
d33 <-Hoover.index (mat73[,25], pop) ## wk 73
d34 <-Hoover.index (mat73[,26], pop) ## wk 34 
d35 <-Hoover.index (mat73[,27], pop) ## wk 35 
d36 <-Hoover.index (mat73[,28], pop) ## wk 36 
d37 <-Hoover.index (mat73[,29], pop) ## wk 37 
d38 <-Hoover.index (mat73[,30], pop) ## wk 38
d39 <-Hoover.index (mat73[,31], pop) ## wk 39
d40 <-Hoover.index (mat73[,32], pop) ## wk 40
d41 <-Hoover.index (mat73[,33], pop) ## wk 41

hooverdeath <- data.frame(d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,
                         d28,d29,d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,d41)
