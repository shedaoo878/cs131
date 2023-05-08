set datafile separator ","
set title "Age Group Distribution"
set xlabel "Age Groups"
set ylabel "Percentage"
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtics format ""
set grid ytics
set term svg
set output "age_data_plot.svg"

plot "age_percentages.csv" using 1:xticlabels("") title "00-09" lt rgb "red", \
     "" using 2:xticlabels("") title "10-19" lt rgb "orange", \
     "" using 3:xticlabels("") title "20-29" lt rgb "yellow", \
     "" using 4:xticlabels("") title "30-39" lt rgb "green", \
     "" using 5:xticlabels("") title "40-49" lt rgb "blue", \
     "" using 6:xticlabels("") title "50-59" lt rgb "purple", \
     "" using 7:xticlabels("") title "60-69" lt rgb "brown", \
     "" using 8:xticlabels("") title "70-79" lt rgb "gray", \
     "" using 9 title "80+" lt rgb "black"

