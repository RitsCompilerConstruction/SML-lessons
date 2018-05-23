# 各課題の答え

## 1. 改行コードについて

```sml
print "hello, ";
print "world";
```

問題文：上のプログラムを、w という文字の直前で改行して出力するように改変してください。

```sml
print "hello, ";
print "\n world";
```

## 2. 式の評価について

問題文： 4 を 3 で割った余りに、2 を足して 3 を掛けて得られた整数値を出力するプログラムを下に追加してください。

```sml
fun print_int n = ((Int.toString n) ^ "\n");

print_int (4 mod 3 + 2) * 3;
```
