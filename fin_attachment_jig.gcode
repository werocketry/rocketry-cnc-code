(https://ncviewer.com/)

(=====================================================)
(plan)
(=====================================================)

(for aligning the fins before attachment to the rocket)
(simple circle with 3 slots 120 apart, cut into a sheet of MDF)
(add a slot for the Lbrackets so they're really exact?)
(intended to be cut into a sheet of MDF that's 12.6 mm thick, at least AAA long, and at least AAA wide)

(body tube 5.5" diameter)
(fins extend another 5.5" radially)
(but do we need the full fin span in the slot?)


(=====================================================)
(manual part)
(=====================================================)

(first step: zero x and y using edge finder at 1000 rpm)
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
M06 T1 (set to tool 1)

(=====================================================)
(circle)
(=====================================================)

(get final OD so that we can pick an exact starting location and inner radius for the circle)
G00 X-5.5 Y0 Z0.5 (quickly move tool to just above where it will start)
M03 S3000 (turn on spindle clockwise at 3000 rpm for cutting the outer profile)
(CHECK THAT 3000 IS A GOOD SPEED FOR MDF)

G01 Z-0.3 (is that how deep we want the circle?)
G02 X5.5 Y0 R5.5 (cut a circle with a radius of 5.5")
(Nathan: motor tube ID is 137.5 +- 0.1mm, OD IS 141 +- 0.1 mm)

(UNITS!!!)

(=====================================================)
(slots)
(=====================================================)

(cut first slot)
G01 X-10
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