let fib n =
  let rec acc n = if n < 2 then 1 else acc (n - 1) + acc (n - 2) in
  print_endline "ocaml invoked by c";
  acc n

let _ = Callback.register "fib" fib
