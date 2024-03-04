---
title: "consolidacion con R"
author: "Fernando Lazcano"
date: "15/2/2024"
output: html_document
---

cargamos librerias 


```{r}
library(readxl)

```

buscamos el archivo de nuestro interes en este caso el libro de excel que necesitaremo, usamos la funcion file.choose para poder abirlo, para que nos de la ruta, despues read_xlxs y abrimos.

en este caso tenemos df (443x17) y df1 (84x17)

```{r}
#seleccionar archivo
file.choose()

# ver el nombre de las pestañas 
excel_sheets("C:\\Users\\ferna\\Downloads\\supermarket_sales - Sheet1.xlsx")

# con el archivo en la pestaña por default
df <- read_xlsx("C:\\Users\\ferna\\Downloads\\supermarket_sales - Sheet1.xlsx")
df
# el archivo con la pestaña de nuestro interes 
df1 <-read_xlsx("C:\\Users\\ferna\\Downloads\\supermarket_sales - Sheet1.xlsx" , sheet = "Hoja1")
df1
```
okay esos archivos vamos a consolidarlos facilmente usando la funcion rbind, facil sencillo y listos para trabajar  y en teoria la suma de df + df1 nos tendria que dar igual 527x17 lo que es realmente lo que nos muestra. 

```{r}
#cosolidacion de la informacion 
dfc = rbind(df,df1)
dfc

```

