10Liners 2018
Mark Sherman m@mwsherman.com

------------------------------------------------------------------------------
 
TRS-80 Color Computer 2 with Extended Color Basic or Disk Extended Color Basic.  
* Plain 'Color Basic' will not work!
* Color Computer 1 will not work, unless it has been upgraded.

Preferred Emulator: XROAR
Preferred ROMs: Color Basic 1.3 with Extended Color Basic 1.1 

http://www.colorcomputerarchive.com/coco/ROMs/XRoar/CoCo/BASIC_OS/
    (bas13.rom and extbas11.rom)

A sample xroar.conf file is provided for convenience. 

To run in XROAR:  

When XROAR is configured properly, it should read "EXTENDED COLOR BASIC 1.1" at
power on.  If you get a "COLOR BASIC 1.x" greeting instead, not all the ROMs are
being loaded correctly.  If the emulator starts with a garbled screen, none of
the roms are being loaded.

In XROAR, Go to the File Menu and Select Load.  Choose the TEMPEST10.BAS file.
This loads the file in the virtual cassette buffer.
In the emulator type CLOAD.  The screen should say 'BASIC F', pause for a bit,
and then give you back to an OK prompt.  Type RUN.  Note:  Sometime CLOAD will
give an IO error.  Try File/Load again, and then CLOAD again, and it will 
probably work.  I think XROAR has a bug!

Also, it assumed the machine running this is freshly powered on.  There are 
certain system settings (changing the size of string space and video ram) that
other programs may have done, and this program is too short to undo any of that.

-----------------------------------------------------------------------------

"TEMPEST"

This game looks a little like Tempest, but gameplay is different.
When it first runs, it will appear frozen for several seconds.  The program
is precalculating several trigonometric functions.

The playfield consists of a pseudo-3d cylinder.  The player is a 'V' shape, 
and can be moved clockwise or counterclockwise with 'A' or 'S' keys.  The
enemy appears as circles on the cylinder, and move towards the near end.  
The SPACE key fires a laser, destroying the enemies.  If an enemy reaches the
near end of the cylinder, that segment of the cylinder is captured.  The player
cannot move past a captured segment, so the player may find themselves 'stuck' 
on one side of the game field.  When all but a single segment is captured, the 
game is lost.  Score visible on game over screen.

tempest10.bas : Condensed, 10 line version
tempest.bas: Full version, same functionality, but less confusing


