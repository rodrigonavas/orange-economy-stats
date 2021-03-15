#Eda scatter plo mtcars

plot(mtcars$mpg ~ mtcars$cyl,
     xlab="cilindros", ylab = "millas por galón",
     main="relación")

plot(mtcars$mpg ~ mtcars$hp,
     xlab="Caballos de fuerza", ylab = "millas por galón",
     main="relación")

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="Inv en educación (%PIB)", 
     ylab = "Desempleo (%)",
     main="Relación educación - desempleo")

plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab="Aporte ECNA al PIB (%)", 
     ylab = "PIB per capita",
     main="Relación educación - desempleo")

qplot(mtcars$hp,
      geom = "histogram",
      xlab = "caballos de fuerza",
      main = "Carros según HP")

ggplot(mtcars, aes(x = hp)) +
        geom_histogram() + 
        labs(x = "Caballos de fuerza",
             y = "Cantidad de carros",
             title = "Carros según HP") +
        theme(legend.position = "none") +
        theme(panel.background = element_blank(),
              panel.grid = element_blank(),
              panel.grid.minor = element_blank())

ggplot(mtcars, aes(x = hp)) +
        geom_histogram(binwidth = 30) + 
        labs(x = "Caballos de fuerza",
             y = "Cantidad de carros",
             title = "Carros según HP") +
        theme(legend.position = "none") +
        theme(panel.background = element_blank(),
              panel.grid = element_blank(),
              panel.grid.minor = element_blank())

ggplot() + geom_histogram(data = mtcars, 
                          aes(x = hp),
                          fill = "blue",
                          color = "red",
                          binwidth = 20) +
        labs(x = "Caballos de fuerza",
             y = "Cantidad de carros",
             title = "Carros según HP") +
        xlim(c(80, 280)) +
        theme(legend.position = "none") +
        theme(panel.background = element_blank(),
              panel.grid = element_blank(),
              panel.grid.minor = element_blank())

ggplot() + geom_histogram(data = orangeec, 
                          aes(x = GDP.PC),
                          fill = "blue",
                          color = "red",
                          binwidth = 2000) +
        labs(x = "PIB per cápita",
             y = "Cantidad de paises",
             title = "PIB per cápita en paises Latam") +
        theme(legend.position = "none") +
        theme(panel.background = element_blank(),
              panel.grid = element_blank(),
              panel.grid.minor = element_blank())

#
ggplot() + geom_histogram(data = orangeec, 
                          aes(x = Internet),
                          fill = "red",
                          color = "yellow",
                          binwidth = 5) +
  scale_x_continuous(breaks = seq(30, 100, by = 5)) +
  labs(x = "Aporte economía naranja al PIB (%)",
       y = "Contruibución economía naranja a Latam",
       title = "PIB per cápita en paises Latam") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid = element_blank(),
        panel.grid.minor = element_blank())


boxplot(mtcars$hp,
        ylab = "Caballos de fuerza",
        main = "Caballaos de fuerza por carro")

ggplot(mtcars, aes(x = as.factor(cyl), 
                   y = hp, fill = cyl)) +
  geom_boxplot(alpha = 0.6) +
  labs(x = "cilidros",
       y = "Caballos de fuerza",
       title = "Caballos de fuerza según cilindros") +
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x = am, y = mpg,
                   fill = am)) +
  geom_boxplot() + 
  labs(x = "Tipo de caja",
       y = "Millas por galón",
       title = "Millas por galón según tipo de caja") + 
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid = element_blank(),
        panel.grid.minor = element_blank())

#fix
mtcars$am <- factor(mtcars$am, levels = 
                      c(1, 0), 
                    labels = 
                      c("Manual", "Automático"))

economy <- mean(orangeec$GDP.PC)
economy

orangeec <- orangeec %>% mutate(
  Strong_economy = ifelse(GDP.PC < economy,
                          "Debajo del promedio PIB",
                          "Sobre el promedio PIB"))

ggplot(orangeec, aes(
  x = Strong_economy, y = AporteEcNa,
  fill = Strong_economy)) +
  geom_boxplot(alpha = 0.4) +
  labs(x = "Tipo de país", 
       y = "Aporte EcNa al PIB",
       title = "Aporte EcNa en PIB promedio") + 
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(orangeec, aes(
  x = Strong_economy, y = Internet,
  fill = Strong_economy)) +
  geom_boxplot(alpha = 0.4) +
  labs(x = "Tipo de país", 
       y = "Penetración de internet (%)",
       title = "Penetración de internet en PIB promedio") + 
  theme(legend.position = "none") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(
  hp, mpg)) +
  geom_point() + 
  labs(x = "Caballos de fuerza",
       y = "Millas por galón",
       tile = "Relación hp y mpg")

ggplot(mtcars, aes(
  wt, hp)) +
  geom_point() + 
  labs(x = "Peso",
       y = "Caballos de fuerza",
       title = "Relación peso y hp")

ggplot(mtcars, aes(
  hp, qsec)) +
  geom_point(aes(
    color = am, size = cyl)) +
  labs(x = "Caballos de fuerza",
       y = "Tiempo en 1/4 de milla",
       tile = "Relación caballos-velocidad")

#
ggplot(orangeec, aes(
  Internet, AporteEcNa)) +
  geom_point(aes(
    color = factor(Strong_economy), size = GDP.Growth..)) +
  labs(x = "Penetración de internet",
       y = "Aporte economía naranja al PIB",
       tile = "Internet y aporte EcNa, según economía
       y crecimiento del PIB")

ggplot(orangeec, aes(
  orangeec$Education.invest...GDP, 
  orangeec$Unemployment)) +
  geom_point(aes(
    color = factor(Strong_economy), 
    size = orangeec$X..pop.below.poverty.line)) +
  labs(x = "Inversión en educación",
       y = "Desempleo",
       tile = "Internet y aporte EcNa, según economía
       y crecimiento del PIB")

my_graph <- ggplot(orangeec, aes(
  Internet, AporteEcNa,
  label = row.names(orangeec))) +
    geom_point(aes(
      color = factor(Strong_economy), size = GDP.Growth..)) +
    labs(x = "Penetración de internet",
         y = "Aporte economía naranja al PIB",
         tile = "Internet y aporte EcNa, según economía
       y crecimiento del PIB")
my_graph


p = ggplotly(my_graph)
p

#parte 2

eficientes <- mean(mtcars$mpg)
eficientes

mtcars <- mtcars %>% mutate(mas_eficientes = ifelse(
  mpg < eficientes, "Bajo promedio", "Sobre promedio"
))

mas_veloces <- mtcars[mtcars$qsec < 16,]
mas_veloces

mtcars <- mtcars %>% mutate(
  velocidad_qsec = ifelse(qsec < 16,
                          "Menos de 16 secs",
                          "Más de 16 secs"))
#
mtcars <- mtcars %>% mutate(
  peso_kilos = (wt / 2.2) * 1000
)

mtcars <- mtcars %>% mutate(
  peso = ifelse(peso_kilos <= 1500,
                "Livianos", "Pesados"))

orangeec <- orangeec %>% mutate(
  crecimiento_GDP = ifelse(GDP.Growth.. >= 2.5,
                           "2.5% o más",
                           "Menos de 2.5%"))

orangeec <- orangeec %>% mutate(
  anaranjados = ifelse(AporteEcNa >= 2.5,
                           "Más anaranjados",
                           "Menos anaranjados"))
#ranking
orangeec %>% arrange(desc(AporteEcNa)) 

TopNaranajas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama",
                        "Argentina", "Colombia",
                        "Brazil", "Paraguay"))
TopNaranajas

#
TopNaranajas %>%
  arrange(desc(AporteEcNa))

mtcars_ordened_peso <-mtcars %>% arrange(
  desc(peso_kilos))

mas_pesados <- filter(
  mtcars_ordened_peso[1:4,])
mas_pesados

#
ggplot(mas_pesados, aes(x = hp, y = mpg)) +
  geom_point() +
  facet_wrap(~model)

ggplot(mtcars, aes(x = cyl, y = mpg, size = peso_kilos)) +
  geom_point() +
  facet_wrap(~am)

#
graf <- ggplot(TopNaranajas, aes(x = Internet,
                         y = Services...GDP,
                         size = GDP.PC,
                         label = Country)) +
         geom_point() 
#grafico interactivo
p2 = ggplotly(graf)
p2

#2
ggplot(TopNaranajas, aes(
  x = TopNaranajas$Education.invest...GDP,
  y = TopNaranajas$AporteEcNa,
  size = TopNaranajas$Unemployment,
  label = Country)) +
  geom_point() 

#colores
myColors <- brewer.pal(9, "OrRd")

ggplot(TopNaranajas, aes(
  x = TopNaranajas$Internet,
  y = TopNaranajas$GDP.PC,
  fill = AporteEcNa,
  label = Country)) +
  geom_tile() +
  facet_wrap(~Country) +
  scale_fill_gradientn(colors = myColors)



