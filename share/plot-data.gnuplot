#!/usr/bin/gnuplot

set style data linespoints
set grid
d(y) = ($0 == 0) ? (y1 = y, 1/0) : (y2 = y1, y1 = y, y1-y2)
plot input u ($1):(d($2))
pause mouse close
