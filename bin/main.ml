open Cmdliner
open Fibocaml

let number_arg =
  let doc = "The Fibonacci number to generate. Defaults to 0" in
  Arg.(value & pos 0 int 0 & info [] ~docv:"NUMBER" ~doc)
;;

let cmd =
  let doc = "Compute the nth Fibonacci number" in
  let info = Cmd.info "fibonacci" ~doc in
  Cmd.make info Term.(ret (const run $ number_arg))
;;

let () = exit (Cmd.eval cmd)
