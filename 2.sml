
 (* hd: devuelve el primer elemento de la lista
    tl: devuelve toda la lista excepto el primero
 *)

 fun number_in_month (fechas:((int*int*int) list), mes: int)=
  if null fechas then 0
  else if (#2(hd (fechas))) = mes then 1 + number_in_month(tl(fechas), mes)
    else number_in_month(tl(fechas), mes)
