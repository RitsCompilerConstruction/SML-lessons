signature ALIST =
sig
  exception AlistExn
  eqtype tkey
  type tval
  type alist
  val new : unit -> alist
  val add : tkey * tval -> alist -> alist
  val find : tkey -> alist -> tval
end

functor Alist (eqtype tk type tv) :> ALIST
  where type tkey = tk
  where type tval = tv =
struct
  exception AlistExn

  type tkey = tk
  type tval = tv
  type alist = (tkey * tval) list

  fun new () = nil

  fun add (k, v) ls = if exists k ls then raise AlistExn else (k, v)::ls

  and exists key [] = false
    | exists key ((k, v)::ls) = k = key orelse exists key ls

  fun find key [] = raise AlistExn
    | find key ((k, v)::ls) = if k = key then v else find key ls
end

structure IntStrAlist = Alist (type tk = int type tv = string)
