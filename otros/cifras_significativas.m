# ====== Funcion cifras significativas =========================================
# Funcion para escribir la solucion en funcion de la cota utilizada.
# Cifras significativas: asociado a error relativo.
# Entrada: d: cantidad de cifras significativas (variable entera)
#          x: numero real 
# Salida: xcs: numero real que contiene solo las cifras significativas
# ==============================================================================
function xcs = cifras_significativas(d, x)

D = 10^(d-ceil(log10(x)));
xcs = round(x*D)/D;




