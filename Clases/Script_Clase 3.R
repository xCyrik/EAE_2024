#Jorge Alberto Sanchez Rodriguez
#2222247
# 15/02/2024

# Crear datos -------------------------------------------------------------

dbh <- c(8, 7, 5, 8, 9, 8, 6, 8, 10, 11)

altura <- c(15, 11, 10, 5, 9, 4, 8, 10, 12, 14)

sp <- c(11, 15, 8, 4, 7, 13, 6, 4, 9, 10)

# Crear un dataframe con variables dbh y altura ---------------------------

Inventario <- data.frame(dbh, altura, sp)

mean(dbh)

sd(dbh)

mean(Inventario$dbh)

var(Inventario$sp)

# Importar datos de internet ----------------------------------------------

ema.url <- "https://raw.githubusercontent.com/mgtagle/Exp_Met_Est_AD2023/main/Scripts/EMA_Ocampo.csv"
ocampo <- read.csv(ema.url)
## csv es el formato para importar datos.

# Representación gráfica --------------------------------------------------
fivenum(ocampo$VELS)
## Fivenum daa los minimos, maximos y cuartiles de los datos
boxplot(ocampo$VELS,
        col = "lightblue",
        ylim = c(0,60),
        ylab = "Velocidad de viento (km/h)",
        main = "Ema Ocampo Coahuila")
hist(ocampo$VELS,
     main = "Estación Ema Ocampo",
     ylab = "Frecuencia",
     xlab = "Velocidad del viento en km/h")
## El ancho de clase se llama "bin" en inglés.

stem(ocampo$VELS)

## Gráfica de dispersión
 plot(ocampo$TEMP,ocampo$VELR,
      xlab = "Temperatura en °C",
      ylab = "Velocidad de rafaga en Km/h",
      col = "red",
      pch = 10)
 ##pch cambia la forma de las figuras en el grafico de dispersión

# Observar datos ----------------------------------------------------------

list(ocampo) ##62 datos de la lista
head(ocampo) ##pimeros datos
tail(ocampo) ##ultimos datos
dim(ocampo) ## dimensiones, numero de columnas y filas.

ocampo[5,] ## obtener valor de la fila, los [] se utilzan para identificar conjuntos de datos
ocampo[,3] ##Obtener los valores de la columna 3
ocampo[5,3] ## Obtener valor de fila 5, columna 3


# Filtrar datos -----------------------------------------------------------

## Igual o mayor >=
## Igual o menor <=
## Igual  que ==
## No es igual !=

ocampo$VELR >= 30

may30 <- subset(ocampo, ocampo$VELR >= 30)

hist(may30$VELR)