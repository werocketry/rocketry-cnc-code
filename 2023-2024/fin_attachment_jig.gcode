(https://ncviewer.com/)

(=====================================================)
(plan)
(=====================================================)

(for initial alignment of the fins on the motor tube with JB Weld)
(simple circle with 3 slots 120 apart, cut into a sheet of MDF)

(the sheet of MDF that this code is written for is 0.496" thick, 49.6" long, and 24.8" wide)

(body tube 5.5" diameter)
(fins extend another 5.5" radially)
(but do we don't have to have the full fin span in the slot)

(=====================================================)
(manual part)
(=====================================================)

(first step: zero x and y to far left of sheet using edge finder at 1000 rpm)
(remember to offset 0.1" for the radius of the edge finder)

(stop spindle, put tool in, and zero z using paper/shim method)

(once zeroed, lift tool a bit, and begin the program)

(=====================================================)
(start program)
(=====================================================)

G54 (coordinate system)
G90 (absolute mode)
G20 (inch mode)
G40 (cancel cutter compensation)
M06 T1 (set to tool 1, 1/4" end mill)

(=====================================================)
(circle)
(=====================================================)

G00 X24.8 Y-17.8232 Z0.5 (quickly move tool to just above where it will start, bottom of circle)
M03 S3000 (turn on spindle clockwise at 3000 rpm)
(CHECK THAT 3000 IS A GOOD SPEED FOR MDF)

G01 Z-0.2
G02 J5.4232
(motor tube ID is 137.75mm ~ 5.4232")

(=====================================================)
(slots)
(=====================================================)

(cut first slot, fin will be straight down from bottom of circle, slot will be slightly offset so that when another piece of MDF is lined up with the edge of this cut, and fin is placed against it, fin will be in the right spot given its thickness)

(use trig to find it once measured the thickness of ALL the fins)

(move along circle to first slot)
G02 X Y- R5.4232

G01 
G01 Z0.5
(move to next spot on circle that intersects a slot with G00)
(use trig to find it)
(cut final slot)

G01 Z1

(=====================================================)
(end the program)
(=====================================================)

M05 (turn off spindle)
G28 (return to home)
M30 (end program)