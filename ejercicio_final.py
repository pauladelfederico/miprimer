#Consigna:
#
# 4)      Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:
#
#     14,  Fido,  12/12/2012 , Macho, 23546987
#
# Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
#
# Solución:

Perro2 = [14, "Fido", "12/12/2012", "Macho", 23546987]

for i in reversed(Perro2):
  print(i)