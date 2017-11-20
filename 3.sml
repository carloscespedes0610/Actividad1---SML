(* llama a la funcion number_in_month el #3 *)

fun number_in_months (fechas:((int*int*int) list), meses: int list)=
  if null fechas then 0
  else if (#2(hd(fechas)))=(#1(hd(meses))) 			  
