#Jorge Alberto Sanchez Rodriguez
#2222247
# 14/03/2024
## las pruebas t de student pueden ser de 3 tipos, t de student de 
## muestras dependientes(se utiliza para comparar el mismo grupo de individuos en tiempo), 
## independientes (Area a y b, caracteristicas diferentes en individuos)
## y de una muestra (en esta se evalua contra una media teorica determinada por un estudio previo)

## Indice de esbeltez, mientras mas cercano a 1 (o sobrepasandolo) mas probabilidades tiene de sobrevivir

# Inserción de los datos. ------------------------------------------------
Vivero <- read.csv("C:/Users/tiki3/Downloads/Viveros csv.csv", header = TRUE)
Vivero$Tratamiento <- as.factor(Vivero$Tratamiento)

##hace que la variable tratamiento se tome como un factor (Necesario para pruebas estadisticas)


# Analisis estadistico ----------------------------------------------------

## Con alpha 0.05 se contrasta contra el p-value para confirmar la Ha (Hipotesis alternativa)

boxplot(Vivero$IE ~ Vivero$Tratamiento)

t.test(Vivero$IE ~ Vivero$Tratamiento, var.equal = 1)

## prueba de  t de una muestra con media teoretica de 0.85)
boxplot(Vivero$IE)
t.test(Vivero$IE, mu =0.90)




# Insercion de datos para analisis de tiempo ------------------------------

Producción <- read.csv("C:/Users/tiki3/Downloads/mainproduccion.csv", header = 1, stringsAsFactors = T)

## stringsAsFactors hace que automaticamente seleccione los caracteres como factores,
## header hace que reconozca las columnas

boxplot(Producción$Kgsem ~ Producción$Tiempo)
t.test(Producción$Kgsem ~ Producción$Tiempo, paired = T)
## se usa el argumento PAIRED = T para variables dependientes, 
## como una misma poblacion en diferente tiempo