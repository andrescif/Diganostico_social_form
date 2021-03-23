library(tidyverse)

#Cargar datos
primera_respuestas <- 
        read.csv("~/R Projects/Diganostico_social_form/Datos/primera_respuestas.csv", comment.char="#")

#Checar cantidad de personas que respondieron por programa
class(primera_respuestas$N_PROGRAMA_SOCIAL)
primera_respuestas$N_PROGRAMA_SOCIAL <- as.factor(primera_respuestas$N_PROGRAMA_SOCIAL)

#Ponerle nombre al programa
table(primera_respuestas$N_PROGRAMA_SOCIAL)
levels(primera_respuestas$N_PROGRAMA_SOCIAL) <- c("Adulto mayor","Técnico productivo",
                                                  "Comunidad juvenil","Bibliotecas municipales",
                                                  "Senderos del arte","COLRED","Munieduca móvil")

#Tabla por programa
#Crear el identificador nombre
primera_respuestas$NOMBRE_TRABAJADOR<- with(primera_respuestas,paste0(V_NOMBRES_I2," ",V_APELLIDOS_I2))

#Crear tabla por programa
#Adulto mayor
Adulto_mayor <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="Adulto mayor"])
colnames(Adulto_mayor) <- c("Personas que SÍ completaron y registraron el formulario")
#Técnico productivo
Tecnico_productivo <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="Técnico productivo"])
colnames(Tecnico_productivo) <- c("Personas que SÍ completaron y registraron el formulario")
#Comunidad juvenil
Comunidad_juvenil <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="Comunidad juvenil"])
colnames(Comunidad_juvenil) <- c("Personas que SÍ completaron y registraron el formulario")
#Bibliotecas municipales
Bibliotecas_muni <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="Bibliotecas municipales"])
colnames(Bibliotecas_muni) <- c("Personas que SÍ completaron y registraron el formulario")
#Senderos del arte
Senderos_arte <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="Senderos del arte"])
colnames(Senderos_arte) <- c("Personas que SÍ completaron y registraron el formulario")
#Colred
Colred <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="COLRED"])
colnames(Colred) <- c("Personas que SÍ completaron y registraron el formulario")
#Munieduca
Munieduca_movil <- as.data.frame(primera_respuestas$NOMBRE_TRABAJADOR[primera_respuestas$N_PROGRAMA_SOCIAL=="Munieduca móvil"])
colnames(Munieduca_movil) <- c("Personas que SÍ completaron y registraron el formulario")


