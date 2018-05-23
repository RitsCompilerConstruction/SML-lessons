fun print_int n = print ((Int.toString n) ^ "\n");
fun print_bool b = print ((Bool.toString b) ^ "\n");

(*
  関数定義
  fun キーワードを用いて関数を定義できます。
  以下に、第一引数に渡した数を第二引数で指定した回数分掛け合わせる、
  べき乗の関数 pow の定義を示します。
  このように、パターンマッチを用いて定義することもできます。
*)

fun pow a 0 = 1
  | pow a b = a * pow a (b - 1);

print_int (pow 2 3); (* => 8 *)
print_int (pow ~1 2); (* => 1 *)

(*
  相互参照関数
  以下に、渡した整数が偶数の時に true を返す even 関数と、
  渡した整数が奇数の時に true を返す odd 関数の定義を示します。
  このような相互再帰的な関数は、互いが互いを参照できるように and キーワードで
  繋げてそれぞれ定義する必要があります。
*)

fun even 0 = true
  | even n = odd (n - 1)
and odd 0 = false
  | odd n = even (n - 1);

print_bool (even 4);  (* => true *)
print_bool (odd 2);   (* => false *)
