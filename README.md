# AdventOfCode-Library-Day1
Executable package needs to be include this in dependencies.
need to call appropriate function for solving the different problems.

To solve part1, below function should be called.
## public func shortestDistanceFor(inputString input:String) -> Int ##
Which takes input sequence as string with ", " in between the instructions and returns the shortest distance to the starting location/block.

#############################################################################
PART - One : Problem
#############################################################################
Santa's sleigh uses a very high-precision clock to guide its movements, and the clock's oscillator is regulated by stars. Unfortunately, the stars have been stolen... by the Easter Bunny.
You're airdropped near Easter Bunny Headquarters in a city somewhere. "Near", unfortunately, is as close as you can get - the instructions on the Easter Bunny Recruiting Document the Elves intercepted start here, and nobody had time to work them out further.
The Document indicates that you should start at the given coordinates (where you just landed) and face North. Then, follow the provided sequence: either turn left (L) or right (R) 90 degrees, then walk forward the given number of blocks, ending at a new intersection.
There's no time to follow such ridiculous instructions on foot, though, so you take a moment and work out the destination. Given that you can only walk on the street grid of the city, how far is the shortest path to the destination?
For example:
		Following R2, L3 leaves you 2 blocks East and 3 blocks North, or 5 blocks away.
		R2, R2, R2 leaves you 2 blocks due South of your starting position, which is 2 blocks away.
		R5, L5, R5, R3 leaves you 12 blocks away.
How many blocks away is Easter Bunny HQ?
################################################################################




To solve part2, below function should be called.
##public func distanceToFirstRevisitedLocationIn(inputString input:String) -> Int##
Which takes input sequence as string with ", " in between the instructions and returns the shortest distance to the first revisited location/block.

#############################################################################
PART - Two : Problem
#############################################################################
You notice the instructions continue on the back of the Recruiting Document. Easter Bunny HQ is actually at the first location you visit twice.
For example, if your instructions are R8, R4, R4, R8, the first location you visit twice is 4 blocks away, due East.
How many blocks away is the first location you visit twice?

################################################################################


Ex:

Input : "R4, R1, L2, R1, L1, L1, R1, L5, R1, R5, L2, R3, L3, L4, R4, R4, R3, L5, L1, R5, R3, L4, R1, R5, L1, R3, L2, R3, R1, L4, L1, R1, L1, L5, R1, L2, R2, L3, L5, R1, R5, L1, R188, L3, R2, R52, R5, L3, R79, L1, R5, R186, R2, R1, L3, L5, L2, R2, R4, R5, R5, L5, L4, R5, R3, L4, R4, L4, L4, R5, L4, L3, L1, L4, R1, R2, L5, R3, L4, R3, L3, L5, R1, R1, L3, R2, R1, R2, R2, L4, R5, R1, R3, R2, L2, L2, L1, R2, L1, L3, R5, R1, R4, R5, R2, R2, R4, R4, R1, L3, R4, L2, R2, R1, R3, L5, R5, R2, R5, L1, R2, R4, L1, R5, L3, L3, R1, L4, R2, L2, R1, L1, R4, R3, L2, L3, R3, L2, R1, L4, R5, L1, R5, L2, L1, L5, L2, L5, L2, L4, L2, R3"

#PART-One Result : 161
#PART-Two Result : 110
