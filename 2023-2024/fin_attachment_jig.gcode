(https://ncviewer.com/)

(=====================================================)
(plan)
(=====================================================)

(for initial alignment of the fins on the motor tube with JB Weld)
(simple circle with 3 slots, cut into a sheet of MDF)
(can use L-brackets to add vertical pieces of MDF whose edges are aligned with the edges of the slots, and pushing the fins against these vertical pieces will align them perfectly where they need to be)

(the sheet of MDF that this code is written for is 0.496" thick, 23.94" long, and 10.8" wide)

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
G42 (cutter compensation right)
M06 T1 (set to tool 1, 1/4" end mill)

(=====================================================)
(circle)
(=====================================================)

G00 X11.9685 Y-8.22467 Z0.5 (quickly move tool to just above where it will start, bottom of circle)
M03 S2500 (turn on spindle clockwise at 2500 rpm)

G01 Z-0.2
G02 J2.7916 (circle)
(motor tube OD 5.5832")

(may want to pause program here, manually jog the tool away from the circle, and test fit the motor tube)

(=====================================================)
(slots)
(=====================================================)

(cut first slot, fin will be straight down from bottom of circle, slot will be slightly offset so that when another piece of MDF is lined up with the edge of this cut, and fin is placed against it, fin will be in the right spot given its thickness)

(use trig to find it once measured the thickness of ALL the fins)
(or use a SolidWorks sketch)

G01 Z0.2
G01 X12.1765 Y-8.22467
G01 Z-0.2
G00 X12.1765 Y-10.22467
G01 Z0.2

(second slot)
G01 X14.2821 Y-3.85714
G01 Z-0.2
G00 X16.01415 Y-2.85714
G01 Z0.2

(third slot)
G01 X9.45369 Y-4.22115
G01 Z-0.2
G00 X7.68559 Y-3.28637
G01 Z0.2

(=====================================================)
(end the program)
(=====================================================)

M05 (turn off spindle)
G28 (return to home)
M30 (end program)