(* llama a la funcion number_in_month el #3 *)

fun number_in_months (fechas:((int*int*int) list), meses: int list)=
  if null meses then 0
  else number_in_month(fechas,hd(meses)) + number_in_months(fechas,tl(meses)) 			  
