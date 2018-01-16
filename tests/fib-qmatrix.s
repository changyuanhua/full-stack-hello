; #0: n
; #1: F0 = 0
; #2: F1 = 1
; #3; F2 = 1
; #4; result = 0
or $0 $0 #1 
or $0 $1 #2
or $0 $1 #3
or $0 $0 #4

; if (n == 0) return 0
jz #0 #25
; if (n == 1) return 1
sub #0 $1 #5
jz #5 #25
or $0 #5 #0

sub #0 $1 #0
jz #0 #23

; F2 = 1*F2 + 1*F1
mul $1 #3 #4
mul $1 #2 #5
add #4 #5 #4

; F1 = 1*F2 + 0*F1
mul $1 #3 #5
mul $0 #2 #6
add #5 #6 #5

; F0 = 1*F1 + 0*F0
mul $1 #2 #6
mul $0 #1 #7
add #6 #7 #6

or $0 #4 #3
or $0 #5 #2
or $0 #6 #1

call #8

print #4
halt

print #0
halt


