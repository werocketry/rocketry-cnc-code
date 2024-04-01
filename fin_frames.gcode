(https://ncviewer.com/)

(2 fin frames to be cut out of each 12x12" sheet of G10)
(G10 specs: https://www.mcmaster.com/9910t35/?fbclid=IwAR3hc5umLRGhN4O2IK_TuNHTnSY-_n690NNLnJXNnnt3zHOB6o1HYXsOQ20)

(=====================================================)
(manual part)
(=====================================================)

(first step: zero x and y using edge finder at 1000 rpm)
(remember to offset 0.1" for the radius of the edge finder)

(stop spindle, put tool in, and zero z using paper/shim method)

(once zeroed, lift tool a bit, and begin the program)

(stock thickness is 3/8" = 0.375")
(to be cut down to 0.35" with a fly cutter, path manually programmed into the machine)
(the following assumes thickness already reduced)

(=====================================================)
(machine code)
(=====================================================)

G54 (coordinate system)
G90 (absolute mode)
G20 (inch mode)
G40 (cancel cutter compensation)
M06 T1 (set to tool 1, 1/4" end mill)

(get coordinates from the sldprt file on my Windows)

(G00 X-0.75 Y0 Z1 (quickly move tool to just above where it will start))
M03 S3000 (turn on spindle clockwise at 3000 rpm for cutting the outer profile)

(go down in increments of 25 thou)






G01 Z1

(=====================================================)
(end the program)
(=====================================================)

M05 (turn off spindle)
G28 (return to home)

M30 (end program)