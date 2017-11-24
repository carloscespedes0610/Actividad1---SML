(* Pregunta 1 
      is_older ((1,2,3),(2,3,4)) = true;
*)

fun is_older (fecha1: (int*int*int), fecha2: (int*int*int))=
  if (#1 fecha1*10000 + #2 fecha1*100 + #3 fecha1 < #1 fecha2*10000 + #2 fecha2*100 + #3 fecha2 )  then true
  else false	

(* Pregunta 2
        number_in_month ([(2012,2,28),(2013,12,1)],2) = 1;
*)

 fun number_in_month (fechas:((int*int*int) list), mes: int)=
  if null fechas then 0
  else if (#2(hd (fechas))) = mes then 1 + number_in_month(tl(fechas), mes)
    else number_in_month(tl(fechas), mes)

(* Pregunta 3
       number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3;
*)

fun number_in_months (fechas:((int*int*int) list), meses: int list)=
  if null meses then 0
  else number_in_month(fechas,hd(meses)) + number_in_months(fechas,tl(meses))

(* Pregunta 4
        dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)];
*)

fun dates_in_month (fechas:((int*int*int) list), mes: int)=
  if null fechas then []
  else if #2(hd(fechas)) = mes then hd(fechas) :: dates_in_month(tl(fechas),mes)
       else dates_in_month(tl(fechas),mes)								
 
(* Pregunta 5
       dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)];
*)

fun dates_in_months (fechas: ((int * int * int) list), meses: int list) =
 if null meses then []
 else dates_in_month(fechas, hd meses) @ dates_in_months(fechas, tl meses)

(* Pregunta 6
       get_nth (["hi", "there", "how", "are", "you"], 2) = "there";
*)

fun get_nth (cadena: (string) list, n: int)=
  if n=1 then hd(cadena)
  else get_nth(tl(cadena),n-1)

(* Pregunta 7
      date_to_string (2013, 6, 1) = "Junio 1, 2013";
*)

fun date_to_string (date: (int * int * int)) =
  let val meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Deciembre"]
  in get_nth(meses, #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)
end
	      
(* Pregunta 8
    number_before_reaching_sum (10, [1,2,3,4,5]) = 3;
*)



(* Pregunta 9
    what_month 70 = 3;
*)


(* Pregunta 10
       what_month 70 = 3;
*)


	      
