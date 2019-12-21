let rec add n =
    if n <= 2 then 1 else
        add (n - 1) + add (n - 2) + (read_int ())
in (print_int (add 7))
