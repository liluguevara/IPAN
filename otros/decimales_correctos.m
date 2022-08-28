# ====== Funcion decimales correctos ===========================================
# Funcion para escribir la solucion en funcion de la cota utilizada.
# Decimales correctos: asociado a error absoluto.
# Entrada: d: cantidad de decimales correctos (variable entera)
#          x: numero real 
# Salida: xdc: numero real que contiene solo los decimales correctos 
# ==============================================================================
function xdc = decimales_correctos(d, x)

D = 10^d;
xdc = round(x*D)/D;
