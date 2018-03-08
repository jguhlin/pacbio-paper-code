set terminal png tiny size 800,800
set output "2011-vs-BL225c.png"
set xtics rotate ( \
 "pSymB" 1.0, \
 "Main" 1683348.0, \
 "pSymA" 5340623.0, \
 "" 6693185 \
)
set ytics ( \
 "pSymA" 1.0, \
 "pSymB" 1616209.0, \
 "Main" 3306802.0, \
 "" 6978785 \
)
set size 1,1
set grid
unset key
set border 0
set tics scale 0
set xlabel "REF"
set ylabel "QRY"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
if(GPVAL_VERSION < 5) { set mouse clipboardformat "[%.0f, %.0f]" }
set xrange [1:6693185]
set yrange [1:6978785]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "2011-vs-BL225c.fplot" title "FWD" w lp ls 1, \
 "2011-vs-BL225c.rplot" title "REV" w lp ls 2
