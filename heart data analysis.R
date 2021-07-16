data<-read.csv(file.choose(),header = TRUE)
data
#line graph
x<-data[1:15,"chol"]
plot(x,type="b",col="red",xlab="row no.",ylab ="chol",main ="heart details of male and female cholestrol levels"  )
b<-data[1:15,"cp"]
plot(b,type="b",col="green",xlab="row no.",ylab = "cp",main ="heart details of male and female cp" )

#pie chart 
x<-data[1:21,"oldpeak"]
labels<-data[1:21,"oldpeak"]
pie(x,labels,main="oldpeak in heart diseases",col = rainbow(length(x)))
b<-data[1:10,"fbs"]
labels<-data[1:10,"fbs"]
pie(b,labels,main = "fbs in heart diseases",col = rainbow(length(b)))
#boxplot
a<-data[,c("age","cp")]
boxplot(age~cp,data=data,xlab="age",ylab="cp",main="details of heart pateints",col="purple","green")
input_data<-data[,c("slp","caa")]
boxplot(slp ~ caa,data=data,xlab = "slp",ylab = "caa",main="details of heart patients",col="blue","green")
#barplot
d<-data[1:20,"age"]
n<-data[1:20,"cp"]
barplot(d,names.arg = n,xlab = "no.of age",ylab = "cp", main="details of heart attack")
#histogram
data$age
hist(data$age)
#scatter plot
p<-data[1:20,c("fbs","age")]
plot(x=data$fbs,y=data$age,xlab="fbs",ylab="age",main="scatter plot")
#creating pdf
pdf("heartdata.pdf")
plot(x,type="b",col="red",xlab="row no.",ylab ="chol",main ="heart details of male and female cholestrol levels"  )
plot(b,type="b",col="green",xlab="row no.",ylab = "cp",main ="heart details of male and female cp" )
pie(x,labels,main="oldpeak in heart diseases",col = rainbow(length(x)))
pie(b,labels,main = "fbs in heart diseases",col = rainbow(length(b)))
pie(b,labels,main = "fbs in heart diseases",col = rainbow(length(b)))
boxplot(age~cp,data=data,xlab="age",ylab="cp",main="details of heart pateints",col="purple","green")
boxplot(slp ~ caa,data=data,xlab = "slp",ylab = "caa",main="details of heart patients",col="blue","green")
barplot(d,names.arg = n,xlab = "no.of age",ylab = "cp", main="details of heart attack")
hist(data$age)
plot(x=data$fbs,y=data$age,xlab="fbs",ylab="age",main="scatter plot")
dev.off()
