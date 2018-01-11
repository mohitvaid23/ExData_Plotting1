m=read.table(file = 'E:/R Working Directory/household_power_consumption.txt',header = TRUE,sep = ';')
data =tbl_df(m)
library(dplyr)
library(ggplot2)

data=data %>%
  mutate(Date=as.Date(Date,'%d/%m/%Y'))%>%
  filter(Date=='2007-02-01' | Date =='2007-02-02')%>%
  mutate(Global_active_power=as.numeric(as.character(Global_active_power)))

plot(data$Global_active_power,type = 'l',ylab = 'Global Active Power (kilowatt)',xlab = "")
dev.copy(device = png,'plot2.PNG')
dev.off()
