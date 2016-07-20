#!/usr/bin/gnuplot


set style data linespoints
set grid
d(y) = ($0 == 0) ? (y1 = y, 1/0) : (y2 = y1, y1 = y, y1-y2)
e(y) = y/1000

set xlabel "frame number"
set ylabel "delta ts (seconds)"
set y2label "buffer size (kilobytes)"
set ytics nomirror
set y2tics
set tics out
set autoscale  x
set autoscale  y
set autoscale y2

plot input u ($1):(d($2)) axes x1y1, input u ($1):(e($3))  axes x1y2

pause mouse close
