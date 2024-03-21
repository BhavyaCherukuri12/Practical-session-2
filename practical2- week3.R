manager_data<- read.csv("managers.csv")
View(manager_data)
str(manager_data)

manager_data$Date
converted_date<-as.Date(manager_data$Date,
                        format = c("%Y-%d-%m","%m/%d/%Y","%Y-%d-%m"))
converted_date
manager_data
manager_data$Date<-converted_date
manager_data$Date


#between date
Betweenddate <- IBOV_RET[IBOV_RET$DATE >= DATE1 & IBOV_RET$DATE <= DATE2,]

startdate<-as.Date("2018-10-15")
enddate<-as.Date("2018-11-01")
startdate
enddate
class(startdate)
class(enddate)

Betweenddate<- manager_data[manager_data$Date >= startdate & manager_data$Date <= enddate,]
Betweenddate

manager_data[complete.cases(manager_data),"Q3"]
manager_data[complete.cases(manager_data),"Q4"]
includelist<-manager_data[,8:9]
includelist<-manager_data[c('Q3','Q4')]
includelist<-names(manager_data) %in% c("Q3","Q4")
includelist

newdata<- manager_data[(includelist)]
newdata


df = subset(manager_data, select = -c(8,9) )
df

dff<- subset(manager_data$Date>=23 )

attach(manager_data)
new_data1<-subset(manager_data, Age>=35 | Age< 24, select = c(Q1,Q2,Q3,Q4) )
new_data1
detach(manager_data)

attach(manager_data)
new_data1<-subset(manager_data, Gender=='M'& Age> 25, select = Gender:Q4 )
new_data1
detach(manager_data)

new_data1<-subset(manager_data, Gender=='M' & Age> 25, select = 4:9 )
new_data1

#random Sampling

my_sample<- manager_data[sample(2:nrow(manager_data),3,replace = FALSE),]
my_sample


my_sample<- manager_data[sample(2:nrow(manager_data),10,replace = TRUE),]
my_sample

attach(manager_data)
new_data1<- manager_data[order(Age),]
new_data1
detach(manager_data)

attach(manager_data)
new_data1<- manager_data[order(Gender,Age),]
new_data1
detach(manager_data)

sample(manager_data,10)

