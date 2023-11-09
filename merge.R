coupon <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/coupon.csv", TRUE)
coupon_redempt <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/coupon_redempt.csv", TRUE)
hh_demographic <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/hh_demographic.csv", TRUE)
product <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/product.csv", TRUE)
transaction_data <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/transaction_data.csv", TRUE)
causal_data <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/causal_data.csv", TRUE)
campaign_desc <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/campaign_desc.csv", TRUE)
campaign_table <- read.csv("C:/Users/Sebulba/Downloads/Итоговое задание/campaign_table.csv", TRUE)

hh_demographic$HOUSEHOLD_SIZE_DESC[which(hh_demographic$HOUSEHOLD_SIZE_DESC=="5+")] <- "5"
hh_demographic$HOUSEHOLD_SIZE_DESC <- as.numeric(hh_demographic$HOUSEHOLD_SIZE_DESC)


data_all <- merge(transaction_data, product, by = "PRODUCT_ID", all.x = TRUE)
data_all <- merge(data_all, hh_demographic, by = "household_key", all.x = TRUE)

write.csv(data_all, "C:/Users/Sebulba/Downloads/Итоговое задание/data_all.csv", row.names=FALSE)







