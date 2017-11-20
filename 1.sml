
fun is_older (fecha1: (int*int*int), fecha2: (int*int*int))=
  if (#1 fecha1*10000 + #2 fecha1*100 + #3 fecha1 < #1 fecha2*10000 + #2 fecha2*100 + #3 fecha2 )  then true
  else false													    
