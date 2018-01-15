; #0: x
; if (x == 0) return x
jz #0 #15

; if (x == 1) return x
sub #0 $1 #4
jz #4 #15
or $0 #4 #0

; #1: first = 0
; #2: second = 1
; #3: result = 0
or $0 $0 #1
or $0 $1 #2
or $0 $0 #3

; iteration
jz #0 #13
sub #0 $1 #0
add #1 #2 #3
or $0 #2 #1
or $0 #3 #2
call #7

print #3
halt

print #0
halt
