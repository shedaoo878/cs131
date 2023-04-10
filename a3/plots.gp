set terminal svg size 800,600
set style data histogram
set style histogram cluster gap 1
set xtics nomirror
set ytics nomirror
set output "h1.svg"
bin_width=1
bin(x,width)=width*floor(x/width)
plot "task2.txt" using (bin($1,bin_width)):(1.0) smooth freq with boxes notitle

set output "h4.svg"
bin_width=4
plot "task2.txt" using (bin($1,bin_width)):(1.0) smooth freq with boxes notitle
