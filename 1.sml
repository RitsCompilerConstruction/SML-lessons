(*
 * Standard ML
 *)

val a = 2;

fun println str = print (str ^ "\n");

val println_int = (print o Int.toString);

println "hello, world";

let
  val b = 3
in
  println_int (a + b)
end;
