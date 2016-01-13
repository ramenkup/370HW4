#Spencer Klinge
#Sunday Nov 1th, 2015
#ISTA370 - Prof. Kumar
#Homework #4

#*************************************************************

#1

sex_lies <- read.table("~/Downloads/sex_lies.txt", header = TRUE, sep = "")
sex_lies
gender.lies.aov<- aov(count~gender*lies, data=sex_lies)
summary(gender.lies.aov)
print(model.tables(gender.lies.aov, "means"),digits=3)

#Based on the two way anlysis of variance, we can say that the only significant is the effect of gender(F=(1,60)=6.547, p=.013),that is, the count of males (M=29.2) and the count of females(M=42.0) are significantly different. there is no significant effect on counts of propesity to lie(p>.05)




#******************************2**************************


#2
  #1
scale.lies.aov<-aov(count~scale*lies, data=sex_lies)
summary(scale.lies.aov)



#we are givin no significant effect of scale (F(1,60)=.000,p=.983) or lies (F(1,60)=.036,p=.851), nor a combination effect. No conclusion can be drawn about propensity to lie among different scales of sexual permissveness.



  #2
sex.scale.aov<-aov(count~sex*scale, data=sex_lies)
summary(sex.scale.aov)
print(model.tables(sex.scale.aov, "means"),digits=3)

#premarital sexual permissvesnnes has a significant effect (F(1,60)=4.52,p=.038) with an alpha of a=.05, lower mean being (M=41.2) and higher being (M=30.2). There is no significant combination effect.


  #3
gender.religion.scale.aov<-aov(count~religion*gender*scale, data=sex_lies)
summary(gender.religion.scale.aov)
print(model.tables(gender.religion.scale.aov, "means"),digits=3)

#This is our first time running three way anova: were not lucky enough to get the three way interaction as a significant: rather,Religion does not have a siginficicant effect (F(1,56)=.958, p=.332), and gender does (F(1,56)=7.16, p=.0098) with a smaller alpha (p-value > .01). There is a significant. combination effect from both religion and gender (F(1,56)=6.881,p=.011) on count. amongst the triple interaction, Composite Males with a religion of 2 have the highest sample mean count (M=52.4), this is not significant.

