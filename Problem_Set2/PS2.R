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
                   "stats4", "VGAM", "splines", "sf", "rgdal", "rgeos", "raster",
                   "tidyverse"))

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
require(sf)
require(rgdal)
library(rgeos)
library(raster)
library(tidyverse)

# 0.2. Directorios
setwd("Documents/GitHub/Big Data and Machine Learning/Problem-Set-2")
#setwd("C:/Users/marya/Documents/GitHub/Big Data and Machine Learning/problem-set-1-mojica-noriega-y-porras")

# 0.3. Importar datos
evanston_parcel_data <- read_csv("data/evanston_parcel_data.csv")
View(evanston_parcel_data)

# 0.4. Seed
set.seed(10101)

# 1. Análisis espacial 
# 1.1. Importar los shapefiles
block    <- st_read("data/cblock/cblock.shp")
tracks   <- st_read("data/cblock/cblock.shp")
evanston <- st_read("data/evanston/evanston.shp")
rail     <- st_read("data/cblock/cblock.shp")
stops    <- st_read("data/Metra Stops/Metra Stops.shp")
roads    <- st_read("data/Major Roads/Major Roads.shp")
lake     <- st_read("data/Lake Michigan/Lake Michigan.shp")
stations <- st_read("data/El Stations/El Stations.shp")
lines    <- st_read("data/El Lines/El Lines.shp")

# 1.2. Graficar los shapefiles
# 1.2.1. Census area identifiers (blocks and rracks)
ggplot() + 
  geom_sf(data = block, fill = "grey", color = "grey") +
  geom_sf(data = tracks, aes(color = TYPE), size = 1) +
  geom_sf(data = roads) +
  ggtitle("") + 
  theme_minimal() +
  scale_fill_brewer(type = "") +
  coord_sf()





