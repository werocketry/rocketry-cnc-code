(https://ncviewer.com/)

(2 fin frames to be cut out of each 12x12" sheet of G10)
(G10 specs: https://www.mcmaster.com/9910t35/?fbclid=IwAR3hc5umLRGhN4O2IK_TuNHTnSY-_n690NNLnJXNnnt3zHOB6o1HYXsOQ20)

(confirm actual thickness with calipers, take into account when taking down thickness in the manual section that follows)

(=====================================================)
(manual part)
(=====================================================)

(first step: zero x and y using edge finder at 1000 rpm)
(remember to offset 0.1" for the radius of the edge finder)

(stop spindle, put tool in, and zero z using paper/shim method)

(once zeroed, lift tool a bit, and begin the program)

(stock thickness is (nominally) 3/8" = 0.375")
(cut down to 0.35" with a fly cutter, path manually programmed into the machine)
(perhaps 0.325" would be better)
(the following assumes thickness already reduced)

(=====================================================)
(machine code starts, initial setup)
(=====================================================)

G54 (coordinate system)
G90 (absolute mode)
G20 (inch mode)
G40 (cancel cutter compensation)
M06 T1 (set to tool 1, 1/4" end mill)


(=====================================================)
(first frame exterior)
(=====================================================)

(go down in increments of 25 thou)

G00 X-0.434 Y7.436 Z0.5 (quickly move tool to just above where it will start)
M03 S3000 (turn on spindle clockwise at 3000 rpm for cutting the outer profile)
(spindle speed is a guess, will need to be adjusted)

(ramp in)
(feedrate is a guess, will need to be adjusted)
G01 Z0 F5
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.025
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948 
G01 X4.052 Y11.922 Z-0.05
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948 
G01 X4.052 Y11.922 Z-0.075
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.1
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.125
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.15
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.175
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.2
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.225
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.25
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.275
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922 Z-0.3
G01 X10.778 Y10.778
G01 X1.222 Y1.222
G01 X0.078 Y7.948
G01 X4.052 Y11.922
G01 X10.778 Y10.778
G01 Z0

(=====================================================)
(second frame exterior)
(=====================================================)

(ramp in)
G01 X11.922 Y4.052 Z-0.025
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.05
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.075
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.1
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.125
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.15
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.175
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.2
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.225
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.25
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.275
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052 Z-0.3
G01 X7.948 Y0.078
G01 X1.222 Y1.222
G01 X10.778 Y10.778
G01 X11.922 Y4.052

G01 Z0.2

(=====================================================)
(first frame interior)
(=====================================================)

G00 X1.860 Y3.226 (quickly move tool to just above where it will start)
G01 Z0
(ramp in)
G01 X1.113 Y7.618 Z-0.025
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.05
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.075
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.1
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.125
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.15
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.175
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.2
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.225
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.25
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.275
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618 Z-0.3
G01 X4.045 Y10.550
G01 X8.437 Y9.803
G01 X1.860 Y3.226
G01 X1.113 Y7.618

G01 Z0.2

(=====================================================)
(second frame interior)
(=====================================================)

G00 X3.226 Y1.860 (quickly move tool to just above where it will start)
G01 Z0
(ramp in)
G01 X9.803 Y8.437 Z-0.025
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.05
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.075
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.1
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.125
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.15
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.175
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.2
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.225
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.25
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.275
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437 Z-0.3
G01 X10.550 Y4.045
G01 X7.618 Y1.113
G01 X3.226 Y1.860
G01 X9.803 Y8.437


G01 Z1

(=====================================================)
(end the program)
(=====================================================)

M05 (turn off spindle)
G28 (return to home)

M30 (end program)