######################################################
# Big Data and Machine Learning for Applied Economics
# Problem Set 2
# Autores: Tatiana Mojica, Sofia Noriega y Maryan Porras
# Fecha: Octubre 2020
######################################################

# 0. Definir librerias e importar datos

# 0.1. Librerias 
install.packages(c("pastecs","expss","xtable","table1","lapply",
                   "sapply","mlr","dummies", "corrplt","fastDummies",
                   "matlib", "qrcode", "rvest", "xml2","dlm","lubridate",
                   "dplyr", "tidyr", "devtools", "RColorBrewer", "prob",
                   "stats4", "VGAM", "splines"))

require(dummies)
require(readr)
require(dplyr)
require(table1)
require(lapply)
require(sapply)
require(mlr)
require(stargazer)
require(xtable)
require(corrplot)
require(fastDummies)
require(matlib)
require(qrcode)
require(rvest)
require(dlm)
require(lubridate)
require(tidyr)
require(ggplot2)  
require(gridExtra)
require(devtools)
require(RColorBrewer)
require(prob)
require(stats4)
require(VGAM)

# 0.2. Directorios
setwd("OneDrive - Universidad de los Andes/Escritorio/Big Data/Talleres/Taller 1")
#setwd("C:/Users/marya/Documents/GitHub/Big Data and Machine Learning/problem-set-1-mojica-noriega-y-porras")

# 0.3. Importar datos