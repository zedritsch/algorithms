array = [] #1 - Array erstellen
for i in 0..9 do #2 - Zahlen von 0 bis 9 durchgehen
	array[i] = i+1 #3 - Position im Array mit i plus 1 belegen
end
array.shuffle! #4 - Array durchmischen

def sort(unsorted, sorted)
	smaller = [] #5 - Array für kleinere Zahlen erstellen
	greater = [] #6 - Array für größere Zahlen erstellen
	buffer = unsorted.pop #7 - Letzte Zahl aus unsortiertem Array in Buffer speichern

	for i in 0..unsorted.length-1 do #8 - Zahlen von 0 bis Länge des unsortiert Arrays minus 1 durchgehen
		if buffer > unsorted[i] then #9 - Überprüfen ob unsortierter Array(i) kleiner als die Zahl aus Buffer ist
			smaller.push(unsorted[i]) #10 - Zahl aus unsortierter Array(i) an Array für kleinere Zahlen anfügen
		else
			greater.push(unsorted[i]) #11 - Zahl aus unsortierter Array(i) an Array für größere Zahlen anfügen
		end
	end

	if smaller.length > 0 then #12 - Überprüfen ob Array für kleinere Zahlen Zahlen enthält
		sort(smaller, sorted) #13 - Array für kleinere Zahlen in sortierten Array sortieren
	end

	sorted.push(buffer) #14 - Zahl aus Buffer sortierten Array anfügen

	if greater.length > 0 then #15 - Überprüfen ob Array für größere Zahlen Zahlen enthält
		sort(greater, sorted) #16 - Array für größere Zahlen in sortierten Array sortieren
	end
end

sorted_array = [] #17 - Sortierten Array erstellen
sort(array, sorted_array) #18 - Array in sortierten Array sortieren

p(sorted_array) #19 - Sortierten Array ausgeben