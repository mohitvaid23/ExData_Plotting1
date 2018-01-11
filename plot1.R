m=read.table(file = 'E:/R Working Directory/household_power_consumption.txt',header = TRUE,sep = ';')


data =tbl_df(m)
library(dplyr)

data=data %>%
  mutate(Date=as.Date(Date,'%d/%m/%Y'))%>%
  filter(Date>='2007-02-01' & Date <='2007-02-02')

hist(x = as.numeric(as.character(data$Global_active_power)),col = 'red',main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)')
dev.copy(device = png,'plot1.PNG')
dev.off()
