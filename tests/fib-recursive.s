; #0: x
; #1: result = 0
or $0 $0 #1

call #4

print #1 
halt

; if (x == 0) return 0;
or $0 #0 #2
jz #2 #12
jnz #2 #8
ret

; if (x == 1) return 1;
sub #0 $1 #2
jz #2 #11
jnz #2 #13
add #1 $1 #1
ret

; fib_ecursive(n-1)
sub #0 $1 #0
call #4

; fib_recursive(n-2)
sub #0 $1 #0
call #4

add #0 $2 #0
ret 
