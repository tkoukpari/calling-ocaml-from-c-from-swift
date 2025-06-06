let fib =
  let rec f n = if n < 2 then 1 else f (n - 1) + f (n - 2) in
  print_endline "ocaml invoked by c";
  f

let _ = Callback.register "fib" fib
