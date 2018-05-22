(*
 * Standard ML
 *)

val a = 2;

fun println str = print (str ^ "\n");

val println_int = (print o Int.toString);

println "hello, world";

println_int (a + 2);
