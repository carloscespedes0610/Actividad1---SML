							(* Pregunta 1 *)

fun is_older (fecha1: (int*int*int), fecha2: (int*int*int))=
  if (#1 fecha1*10000 + #2 fecha1*100 + #3 fecha1 < #1 fecha2*10000 + #2 fecha2*100 + #3 fecha2 )  then true
  else false	

							(* Pregunta 2*)

 (* hd: devuelve el primer elemento de la lista
    tl: devuelve toda la lista excepto el primero
 *)

 fun number_in_month (fechas:((int*int*int) list), mes: int)=
  if null fechas then 0
  else if (#2(hd (fechas))) = mes then 1 + number_in_month(tl(fechas), mes)
    else number_in_month(tl(fechas), mes)

							(* Pregunta 3*)

(* llama a la funcion number_in_month el #3 *)

fun number_in_months (fechas:((int*int*int) list), meses: int list)=
  if null meses then 0
  else number_in_month(fechas,hd(meses)) + number_in_months(fechas,tl(meses)) 		