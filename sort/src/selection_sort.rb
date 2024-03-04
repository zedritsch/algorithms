array = [] #1 - Array erstellen
for i in 0..9 do #2 - Zahlen von 0 bis 9 durchgehen
	array[i] = i+1 #3 - Position im Array mit i plus 1 belegen
end
array.shuffle! #4 - Array durchmischen

for i in 0..array.length-2 do #5 - Zahlen von 0 bis Länge des Arrays minus 2 durchgehen
	pos = i #6 - Position gleich i setzen

	for j in i+1..array.length-1 do #7 - Zahlen von i plus 1 bis Länge des Arrays minus 1 durchgehen
		if array[j] < array[pos] then #8 - Überprüfen ob Array(j) kleiner als Array(Position) ist
			pos = j #9 - Position gleich j setzen
		end
	end

	buffer = array[i] #10 - Zahl aus Array(i) in Buffer speichern
	array[i] = array[pos] #11 - Zahl in Array(i) mit Zahl aus Array(Position) ersetzen
	array[pos] = buffer #12 - Zahl in Array(Position) mit Zahl aus Buffer ersetzen
end

p(array) #13 - Array ausgeben