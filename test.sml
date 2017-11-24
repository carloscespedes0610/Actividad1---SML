val p1 = is_older ((2018,04,03),(2018,04,3));  (* resp.= false  *)

val fechas_list=[(2017,08,29),(2016,09,03),(1998,12,30),(2000,10,06),
		 (2012,12,21),(2040,01,01),(2015,12,31),(2001,05,09)];

val p2 = number_in_month (fechas_list, 12); (* resp.= 3 *)   

val p3 = number_in_months(fechas_list,[9,3,1]); (* resp.= 2 *)

val p4 = dates_in_month(fechas_list,12); (* resp.= 8 elementos*)

val p5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]);

val p6 = get_nth (["Carlos", "Erika", "Karla", "Isabela"], 3); (* resp.= Karla*) 
