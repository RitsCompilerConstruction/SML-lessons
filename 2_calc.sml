(*
  +, ~, *, /, div, mod といった演算子を用いて、「加減乗除」や「商の整数部分」、「余り」を計算できます。
*)

(*
  ここでは特別に、整数値を出力するときには print_int / print_real 関数を使用してください。
  今の段階では、下の関数定義文の意味がわからなくても大丈夫です。
*)

fun print_int n =
  print ((Int.toString n) ^ "\n");

val print_real = (print o Real.toString);

print_int ((1 + 3) * 4);
print_real (7.2 / 4.8);  (* / 演算子の両辺は real 型 *)
print_int (4 div 3);     (* div 演算子の両辺は int 型 *)
print_int (4 mod 3);     (* mod 演算子の両辺は int 型 *)
