m=read.table(file = 'E:/R Working Directory/household_power_consumption.txt',header = TRUE,sep = ';')
data =tbl_df(m)
library(dplyr)
library(ggplot2)

data=data %>%
  mutate(Date=as.Date(Date,'%d/%m/%Y'))%>%
  filter(Date=='2007-02-01' | Date =='2007-02-02')%>%
  mutate(Global_active_power=as.numeric(as.character(Global_active_power)))%>%
  mutate(Sub_metering_1=as.numeric(as.character(Sub_metering_1)))%>%
  mutate(Sub_metering_2=as.numeric(as.character(Sub_metering_2)))%>%
  mutate(Sub_metering_3=as.numeric(as.character(Sub_metering_3)))%>%
  select(Sub_metering_1,Sub_metering_2,Sub_metering_3)

matplot(data, type = 'l',col = c('black','red','blue'),ylab = 'Energy sub metering')
legend("topright", col=c('black','red','blue'),legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),pch = 19,cex=0.5)

dev.copy(device = png,'plot3.PNG')
dev.off()
