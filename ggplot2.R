midwest

head(midwest$county,n=20)

midwest [is.na(midwest)]<-0

k<- midwest
#fix(midwest)
View(k)
str(midwest)

dplyr::glimpse(midwest)

summary(midwest$area)
summary(midwest$poptotal)

as.factor(midwest$county)
midwest$state<-as.factor(midwest$state)
summary(midwest$state)

g1<- ggplot(midwest,aes(x=area,y=poptotal))+geom_count()
plot(g1)
g2<-ggplot(midwest,aes(x=area,y=poptotal))+geom_point(mapping = aes(col="stat",size=popdensity))+geom_smooth(method="losses",se=F)+
  xlim(c(0.0000,0.1200))+ylim(c(1500,5110000))+labs(subtitle="Midwest",y="Population",x="Area",title="scatterplotby using ggplot",caption="source:midwest")
  plot(g2)         

  options(scipen = 999)  
g2  

#-----------------------

Superstore
ss<-Superstore
str(ss)
View(ss)
sss<-data.frame(ss)
#city,country,Ship status,category
as.factor(ss$City)
dplyr:: glimpse(ss)
g3<-ggplot(Superstore,aes(x=City,y=Sales))+geom_point(mapping = aes(col="stat",size=NULL))+geom_smooth(method="losses",se=F)+
  labs(subtitle="Superstore",y="Sales",x="City",title="scatterplotby using ggplot",caption="source:Superstore")
plot(g3)

g4<-ggplot(Superstore,aes(x=Sales,y=Profit))+geom_jitter(mapping = aes(col="state",fill=NULL))+geom_smooth(method="losses",se=F)+
  labs(subtitle="Superstore",y="Sales",x="City",title="scatterplotby using ggplot",caption="source:Superstore")
plot(g4)

g5<-ggplot(Superstore,aes(x=Sales))+geom_bar(aes(fill = I("red")), position = position_stack(reverse = TRUE)) + 
  xlim(c(0,3000))+ylim(c(0,3000))+geom_histogram(binwidth =700)
plot(g5)

g8<-ggplot(Superstore,aes(x=Sales))+geom_bar(aes(fill = I("red")), position = position_stack(reverse = TRUE)) + 
  geom_histogram(binwidth =500)
  plot(g8)                                                                         
    
           
g7<-ggplot(Superstore,aes(x=City,y=Sales)) +geom_point(mapping = aes(col="stat",fill=NULL))+ geom_smooth(method="losses",se=F)+
             labs(subtitle="Superstore",y="Sales",x="City",title="scatterplotby using ggplot",caption="source:Superstore")           
plot(g7)     

g6<-ggplot(Superstore,aes(x=Sales ))+geom_freqpoly()+
  labs(subtitle="Superstore",title="scatterplotby using ggplot",caption="source:Superstore")  
plot(g6)

g9<-ggplot(Superstore,aes(x=Profit))+geom_density()+
  labs(subtitle="Superstore",title="scatterplotby using ggplot",caption="source:Superstore")  
plot(g9)
  
g10<-ggplot(Superstore,aes(x=Quantity ))+geom_freqpoly()+
  labs(subtitle="Superstore",title="scatterplotby using ggplot",caption="source:Superstore")  
plot(g10)

g11<-ggplot(Superstore,aes(x='Sales per Customer' ))+geom_dotplot()+
  labs(subtitle="Superstore",title="scatterplotby using ggplot",caption="source:Superstore") 
plot(g11)

