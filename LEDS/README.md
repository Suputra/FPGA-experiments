# LEDS
This should blink the upduino's leds - first red, then green, then blue, then all of them. It uses the led pins as well as the on board clock on the board.

to run this, run:
```
apio verify
apio build
apio upload
```
binary files are provided, but I'm not sure how universal they are.

to sim this, run:
```
apio verify
apio sim
```
which should open gtkwave.