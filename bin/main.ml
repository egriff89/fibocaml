open Fibocaml

let () =
  Clap.description "Compute the nth Fibonacci number";
  let number = Clap.default_int ~description:"The Fibonacci number to generate" 0 in
  Clap.close ();
  match run number with
  | `Ok () -> ()
  | `Error (verbose, _) -> exit (if verbose then 1 else 2)
;;
