structure Alist =
struct
  exception AlistExn

  type tkey = int
  type tval = string
  type alist = (tkey * tval) list

  fun new () = nil : alist

  fun add (k, v) ls = if exists k ls then raise AlistExn else (k, v)::ls

  and exists key [] = false
    | exists key ((k, v) :: ls) = k = key orelse exists key ls

  fun find key [] = raise AlistExn
    | find key ((k, v) :: ls) = if k = key then v else find key ls
end
