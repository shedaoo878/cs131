set terminal svg size 800,600
set output 'population_areas.svg'

set title 'Total Population in Rural and Urban Areas'
set ylabel 'Population'
set yrange [0:*]

set style data histogram
set style fill solid border -1
set boxwidth 0.5

set grid ytics

plot 'areas.csv' using 2:xticlabels(1) title ''

