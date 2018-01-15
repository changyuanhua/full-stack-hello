; #0: x
; #1: a = 0 
; #2: b = 1 
; #3: result = 0
or $0 $0 #1 
or $0 $1 #2
or $0 $0 #3  

call #6 

print #3 
halt

; if (x == 0) return a
or #0 $0 #4
jz #4 #9
jnz #4 #11
or $0 #1 #3
ret

; if (x == 1) return b
sub #0 $1 #4 
jz #4 #14
jnz #4 #16
or $0 #2 #3
ret

; tail_recursive(x-1, b, a+b)
sub #0 $1 #0
or $0 #1 #4
or $0 #2 #1
add #2 #4 #2
call #6
ret
