fun print_bool b = print ((Bool.toString b) ^ "\n");

fun print_int n = print ((Int.toString n) ^ "\n");

val print_int_list = map (fn s => (print o Int.toString) s);

(*
  あらかじめ用意されているリスト操作関数
*)

val listA = [1, 2, 3];

print_bool (null []); (* => true *)
print_bool (null listA); (* => false *)

print_int (hd listA); (* => 1 *)
(* print_int (hd []); => unhandled exception: Empty *)

print_int_list (tl listA);
(* print_int_list (tl []); => unhandled exception: Empty *)
