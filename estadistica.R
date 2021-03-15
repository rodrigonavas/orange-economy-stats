#
pairs(mtcars[, 2:6])

#
newdata <- subset(mtcars, select = 
                    c(2, 7:8, 11, 12))
pairs(newdata)

pairs(mtcars[, -c(1, 3:6, 9, 10)])

#
eficientes <- filter(mtcars, mpg >= 30)
eficientes

#
pairs(eficientes[, 2:6])

merc <- mtcars %>% 
  filter(str_detect(model, "Merc"))
merc

pairs(merc[, 2:6])

#
cor(mtcars[, c(2,4)])

cor(newdata)

cor(merc[, 2:6])

#orangeec[3, 4] -> 2550
pairs(orangeec[, 2:6])

pairs(orangeec[, 5:10])

#
newdata <- subset(orangeec, select = c(5, 6, 10, 11, 12, 13))
pairs(newdata)

#
cor(orangeec[, 2:6])
cor(orangeec[, 2:6], use = "complete.obs")

cor(orangeec[, 5:10], use = "complete.obs")

cor(newdata, use = "complete.obs")

summary(mtcars)

sd(mtcars$mpg)
mean(mtcars$mpg)
porDesv <- (sd(mtcars$mpg) / 
              mean(mtcars$mpg)) * 100
porDesv

sd(orangeec$Internet)
porDesv2 <- (sd(orangeec$Internet) /
               mean(orangeec$Internet)) * 100
porDesv2

summary(orangeec)


# elminar nas
mean(orangeec$AporteEcNa, na.rm = TRUE)
sd(orangeec$AporteEcNa, na.rm = TRUE)

porDesv3 <- (sd(orangeec$AporteEcNa, na.rm = TRUE) /
               mean(orangeec$AporteEcNa, na.rm = TRUE)
             ) * 100
porDesv3
  
  
  
  
  