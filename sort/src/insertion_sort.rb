array = [] #1 - Array erstellen
for i in 0..9 do #2 - Zahlen von 0 bis 9 durchgehen
	array[i] = i+1 #3 - Position im Array mit i plus 1 belegen
end
array.shuffle! #4 - Array durchmischen

sorted_array = [] #5 - Sortierten Array erstellen
sorted_array.push(array.pop) #6 - Letztes Element des unsortierten Arrays in den Sortierten verschieben
while array[0] != nil do #7 - Überprüfen ob noch ein Element im unsortierten Array ist
	sorted_array.push(array.pop) #8 - Letztes Element des unsortierten Arrays in den Sortierten verschieben

	for i in (sorted_array.length-1).downto(1) do #9 - Zahlen von der Länge des sortierten Arrays minus 1 bis 1 durchgehen
		if sorted_array[i] < sorted_array[i-1] then #10 - Überprüfen ob sortierter Array(i) kleiner als sortierter Array(i minus 1) ist
			buffer = sorted_array[i-1] #11 - Zahl aus sortierten Array(i minus 1) in Buffer speichern
			sorted_array[i-1] = sorted_array[i] #12 - Zahl in sortierten Array(i minus 1) mit Zahl aus sortierten Array(i) ersetzen
			sorted_array[i] = buffer #13 - Zahl in sortierten Array(i) mit Zahl aus Buffer ersetzen
		end
	end
end

p(sorted_array) #14 - Sortierten Array ausgeben