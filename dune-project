(lang dune 3.20)

(name fibocaml)

(generate_opam_files true)

(source
 (github egriff89/fibocaml))

(authors "Eric Griffith <griffith.eric@pm.me>")

(maintainers "Eric Griffith <griffith.eric@pm.me>")

(license MIT)

(package
 (name fibocaml)
 (synopsis "Fibonacci generator written in OCaml")
 (description "Fibonacci generator written in OCaml")
 (depends ocaml cmdliner zarith)
 (tags
  (ocaml fibonacci cli)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
