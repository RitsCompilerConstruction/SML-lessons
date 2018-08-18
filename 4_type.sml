datatype rectangle = RECT of real * real;

fun area (RECT (w, h)) = w * h;

val r = RECT (3.0, 4.0);

(print o Real.toString) (area r);

datatype dayofweek = SUN
       | MON
       | TUE
       | WED
       | THU
       | FRI
       | SAT;

fun is_holiday SAT = true
  | is_holiday SUN = true
  | is_holiday _ = false;

(print o Bool.toString) (is_holiday MON);

datatype 'a list' = NIL
                  | CONS of 'a * 'a list';

fun length' NIL = 0
  | length' (CONS (x, xs)) = 1 + length' xs;

(print o Int.toString) (length' (CONS (1, (CONS (2, NIL)))));
