set terminal png tiny size 800,800
set output "2011-vs-GR4.png"
set xtics rotate ( \
 "pSymB" 1.0, \
 "Main" 1683348.0, \
 "pSymA" 5340623.0, \
 "" 6693185 \
)
set ytics ( \
 "pSymB" 1.0, \
 "pSymA" 1701381.0, \
 "pRmeGR4b" 3119287.0, \
 "pRmeGR4a" 3345011.0, \
 "Main" 3520993.0, \
 "" 7141709 \
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
set yrange [1:7141709]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "2011-vs-GR4.fplot" title "FWD" w lp ls 1, \
 "2011-vs-GR4.rplot" title "REV" w lp ls 2
