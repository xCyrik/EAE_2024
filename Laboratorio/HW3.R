#Jorge Alberto Sanchez Rodríguez

#Problema 1

x <- c(6,4,1,3)
y <- c(1,3,4,2)

## primer formula
sum(x)
## segunda formula
prod (x)
## tercera formula
prod(x^2,y^0.5)
## cuarta formula
sum(x*y)
##quinta formula
prod(x,y)

#Problema 2
grupoa <- c(80,90,90,100)
grupob <- c(60, 65, 65, 70, 70, 70, 75,
            75, 80, 80, 80, 80, 80, 85, 100)
##Respuesta a) Creo que el grupo a tiene una mayor altura media
##Respuesta b)
mean(grupoa)
mean(grupob)
## Si, coincide con mi impresion, es el grupo a

#Problema 3
##promedio de 80, entonces x = 80*4-(87+72+85)
exm <- c(87+72+85)
caldes<- 80

prod(caldes,4)-sum(exm)
##La calificacion que necesita es 76

#problema 4

## b) verdad

#Problema 5
germ <- c(5,6,7,8,9)
petri <- c(1,3,5,3,1)

matriz <- data.frame(germ, petri)
## a) se podría realizar un barplot

## b)
mean(petri)
## c)
median(petri)


#Problema 6 
set <- c(2,2,3,6,19)
##a) 
mean(set)
median(set)
tabla_frecuencia <- table(set)

# Encontrar el valor o los valores con la frecuencia máxima (moda)
moda <- names(tabla_frecuencia[tabla_frecuencia == max(tabla_frecuencia)])

# Imprimir la moda
cat("La moda es:", moda, "\n")
##b)
set2 <- c(7,7,8,11,24)
mean(set2)
median(set2)
tabla_frecuencia <- table(set2)

# Encontrar el valor o los valores con la frecuencia máxima (moda)
moda <- names(tabla_frecuencia[tabla_frecuencia == max(tabla_frecuencia)])

# Imprimir la moda
cat("La moda es:", moda, "\n")
##c) Todos los valores son diferentes, creo que se ven afectadas de manera que todos los valores crecen por el mismo valor (en este caso 5)
##d)
set3 <- c(10,10,15,30,50)
mean(set3)
median(set3)


tabla_frecuencia <- table(set3)

# Encontrar el valor o los valores con la frecuencia máxima (moda)
moda <- names(tabla_frecuencia[tabla_frecuencia == max(tabla_frecuencia)])

# Imprimir la moda
cat("La moda es:", moda, "\n")
## e) Todos los valores de tendencia tambien se multiplican por 5

# Problema 7
dataset1 <- c(5, 6, 7, 8, 9)
mean(dataset1)
median(dataset1)
dataset2 <- c(6,6,7,8,8)
mean(dataset2)
median(dataset2)
## a) (5, 6, 7, 8, 9)  y  (6, 6, 7, 8, 8)

# b) (1, 2, 7, 8, 9)  y (0, 1, 7, 8, 9)
dataset3 <- c(1, 2, 7, 8, 9)
mean(dataset3)
median(dataset3)
dataset4 <- c(0, 1, 7, 8, 9)
mean(dataset4)
median(dataset4)