open Cmdliner

val fibonacci : int -> (Z.t, 'a) result
val number_arg : int Term.t
val run : int -> [> `Error of bool * 'a | `Ok of unit]
val cmd : unit Cmd.t