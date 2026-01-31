### Fibocaml
A basic Fibonacci generator written in OCaml.

#### Building and running
```shell
git clone https://github.com/egriff89/fibocaml.git
cd fibocaml

# Create a local switch and install dependencies
opam switch create . 5.4.0 --deps-only
eval $(opam env)

dune build
dune exec _build/default/bin/main.exe
```

### Installing and running
```shell
# Build and install `fibonacci` to the project directory
$ dune build -p fibocaml @install
$ dune install

# The generated `*.install` file lets you run it without the full path: 
# `_build/install/default/bin/fibonacci`
$ fibonacci 100
Fibonacci(100) = 354224848179261915075
```