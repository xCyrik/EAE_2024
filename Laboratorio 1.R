## Laboratorio 1 gastos mensuales

celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
gastos_totales <- celular + transporte + comestibles + gimnasio + alquiler + otros
gastos <- c(celular, transporte, gimnasio, comestibles, alquiler, otros)
sum(gastos) * 5
sum (gastos) * 10
barplot(sort(gastos, decreasing = TRUE))