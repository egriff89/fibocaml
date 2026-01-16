open Cmdliner

let fibonacci n =
  let rec inner a b count =
    match count with
    | _ when Z.(count = zero) -> Ok a
    | _ -> inner b (Z.add a b) (Z.sub count Z.one)
  in
  inner Z.zero Z.one (Z.of_int n)
;;

let number_arg =
  let doc = "The Fibonacci number to generate. Defaults to 0" in
  Arg.(value & pos 0 int 0 & info [] ~docv:"NUMBER" ~doc)
;;

let run number =
  match fibonacci number with
  | Ok result ->
    Printf.printf "Fibonacci(%d) = %s\n" number (Z.to_string result);
    `Ok ()
  | Error msg ->
    Printf.eprintf "Error: %s\n" msg;
    `Error (false, msg)
;;

let cmd =
  let doc = "Compute the nth Fibonacci number" in
  let info = Cmd.info "fibocaml" ~doc in
  Cmd.v info Term.(ret (const run $ number_arg))
;;

let () = exit (Cmd.eval cmd)
