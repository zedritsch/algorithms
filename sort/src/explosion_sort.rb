array = [] #1 - Array erstellen
for i in 0..9 do #2 - Zahlen von 0 bis 9 durchgehen
	array[i] = i+1 #3 - Position im Array mit i plus 1 belegen
end
array.shuffle! #4 - Array durchmischen

conversion_array = [] #5 - Convertierungs Array erstellen
for i in 0..array.length-1 do #6 - Zahlen von 0 bis Länge des Arrays minus 1 durchgehen
	conversion_array[array[i]-1] = array[i] #7 - Zahl aus Array(i) in convertierungs Array(Zahl aus Array(i) minus 1) kopieren
end

sorted_array = [] #8 - Sortierten Array erstellen
for i in 0..conversion_array.length do #9 - Zahlen von 0 bis Länge des convertierungs Arrays durchgehen
	if conversion_array[i] != nil then #10 - Überprüfen ob convertierungs Array(i) keine Zahl enthält
		sorted_array << conversion_array[i] #11 - Zahl aus convertierungs Array(i) in sortierten Array kopieren
	end
end

p(sorted_array) #12 - Sortierten Array ausgeben