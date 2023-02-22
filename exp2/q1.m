# Aim:

#create a vector empid
empid = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
empid

#create a vector age
age = c(25,26,27,28,29,30,31,32,33,34,35,36,37,38,39)
 age
 #create a vector gender
 gender = c(1,0,1,1,1,0,0,1,1,1,1,0,0,1,0)
 gender
 
 #create a vector status
status = c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
status

# reporting a data frame (Combining vectors) 
empinfo = data.frame(empid,age,gender,status)
empinfo

# Labeling character to numeric 
empinfo$gender = factor(empinfo$gender,labels=c("male","female"))
empinfo$gender

empinfo$status=factor(empinfo$status,labels=c("staff","faculty"))
empinfo$status

empinfo

#Extract female data
female = subset(empinfo,empinfo$gender=="female")
female

# Extract male data
male = subset(empinfo,empinfo$gender=="male")
male

# Summary statistics for empinfo data
summary(empinfo)

# Summary statistics of male,female and age
summary(male)

summary(female)

summary(age)

# Creating table
table1 = table(empinfo$gender)
table1

table2 = table(empinfo$status)
table2

# Creating table(two-way)
table3 = table(empinfo$gender,empinfo$status)
table3

# Graphical representation (scatterplot)
plot(empinfo$age,type="l",main="Age of employees",xlab="empid",ylab="age in years",col="red")

# Graphical represtation (Pie chart)
pie(table1)

pie(table2)

pie(table3)

# Graphical represtation (Bar plot)
barplot(table3,beside=T,xlim=c(1,15),ylim=c(0,5),col=c("blue","red"))
legend("topright",legend=rownames(table3),fill=c("blue","red"),bty="n")

# Graphical representation (Box plot)
boxplot(empinfo$age~empinfo$status,col=c("red","blue"))

#Conlusion:
#Different alignment of data set and various graphical representation in R have been explored and executed
