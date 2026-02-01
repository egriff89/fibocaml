let fib n =
  let rec inner a b count =
    match count with
    | _ when Z.(count = zero) -> Ok a
    | _ -> inner b (Z.add a b) (Z.sub count Z.one)
  in
  inner Z.zero Z.one (Z.of_int n)
;;

let run number =
  match fib number with
  | Ok result ->
    Printf.printf "Fib(%d) = %s\n" number (Z.to_string result);
    `Ok ()
  | Error msg ->
    Printf.eprintf "Error: %s\n" msg;
    `Error (false, msg)
;;
