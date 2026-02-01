val fib : int -> (Z.t, 'a) result
val run : int -> [> `Error of bool * 'a | `Ok of unit]