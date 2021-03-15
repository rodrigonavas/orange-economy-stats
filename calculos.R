View(orangeec)

4 + 8

20 - 8

4^2

x <- 86
x

Oficina <- 7
Platzi <- 1
Transporte <- 1.5
Tiempo_al_dia <- Oficina + Platzi + Transporte
Tiempo_al_dia

str(mtcars)
class(mtcars$vs)
summary(mtcars)

?mtcars

help(mtcars)
help(orangeec)

mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

str(orangeec)

summary(orangeec)

mtcars.new <- transform(mtcars, wt = wt * 1000 / 2.2)
mtcars.new
summary(mtcars.new)

tiempo_platzi <- c(25, 5, 10, 15, 10)
suma_s <- sum(tiempo_platzi)
suma_s
tiempo_lecturas <- c(30, 10, 5, 10, 15)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas
tiempo_aprendizaje

dias_aprendizaje <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
dias_aprendizaje 

total_tiempo_platzi <- sum(tiempo_aprendizaje)

#matriz
tiempo_matriz <- matrix(c(tiempo_platzi, tiempo_lecturas), nrow = 2, byrow = TRUE)

dias <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
tiempo <- c("tiempo platzi", "tiempo lecturas")

colnames(tiempo_matriz) <- dias
rownames(tiempo_matriz) <- tiempo
colSums(tiempo_matriz)

tiempo_matriz

final_matrix <- rbind(tiempo_matriz, c(10, 15, 30, 5, 0))
final_matrix

final_matrix <- cbind(final_matrix, Sabado = c(1, 2, 3))

final_matix[1, 5]

mtcars[mtcars$cyl < 6,]


orangeec[orangeec$GDP.PC >= 15000, ]

orangeec[orangeec$Creat.Ind...GDP <= 2, ]

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                      & Education.invest...GDP >= 4.5)

neworangeec <- subset(orangeec, Internet.penetration...population > 80
                      & Education.invest...GDP >= 4.5,
                      select = Creat.Ind...GDP)

neworangeec

rename(orangeec, c("Creat.Ind...GDP" = "AporteEcNa"))
names(orangeec)[names(orangeec) == "Creat.Ind...GDP"] <- "AporteEcNa"
names(orangeec)[names(orangeec) == "AporteEcNa"] <- "AporteEcNa"
colnames(orangeec)[10] <- "Internet"

Nivel_curso <- c("Básico", "Intermedio", "Avanzado")
Nivel_curso

head(mtcars)
head(orangeec)

tail(mtcars)

glimpse(orangeec)

my_vector <- 1:8
my_matrix <- matrix(1:9, ncol=3)
my_df <- mtcars[1:4,]

my_vector 
my_matrix
my_df

my_list <- list(my_vector, my_matrix, my_df)
my_list

newdataset <-  transform(mtcars ,drat = drat * 10)
newdataset

newdataset[newdataset$mpg < 20, ]

