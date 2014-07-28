(** The main application *)

open Printf

let info str =
  printf "[info] %s\n" str

let rec fib n =
  if n = 0 || n = 1 then
    1
  else
    fib (n-1) + fib (n-2)

let main () =
  info "starting app";
  printf "fib 10 = %d\n" (fib 10);
  info "exiting app"

let () = main()

