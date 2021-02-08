# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Yunuén Hernández Álvarez (UAEH)

# Laboratorio - PIVOTAR A LO LARGO


#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos

#instalar paquete tidyverse  y readr
install.packages("tidyverse")
install.packages("readr")


#Cargar paquete tidyverse y readr
library(tidyverse)
library(readr)

#CARGAR DATOS

library(readr)
tabla1 <- read_csv("C:/Users/yunh_/Desktop/DOCTORADO/3er. SEMESTRE/COMPLEJIDAD ECONÓMICA/Tareas/Laboratorios/Lab 5/ice2014.csv")



names(tabla1)

# 1. Pivotar tabla  "A LO LARGO"
t1_PIVOTANTE = tabla1 %>%
  pivot_longer(cols = c("Km,0"   ,   "Km,2"   ,   "Km,4"   ,   "Km,6"   ,   "Km,8"    ,  "Km,10"  ,   "Km,12"  ,   "Km,14"  ,   "Km,16"  ,   "Km,18"   ,  "Km,20"  ,   "Km,22" , "Km,24"  ,   "Km,26" ), names_to = "iteracion", values_to = "ranking")

# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.csv")


getwd()
setwd("C:/Users/yunh_/Documents")