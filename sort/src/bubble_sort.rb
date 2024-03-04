array = [] #1 - Array erstellen
for i in 0..9 do #2 - Zahlen von 0 bis 9 durchgehen
	array[i] = i+1 #3 - Position im Array mit i plus 1 belegen
end
array.shuffle! #4 - Array durchmischen

for i in 0..array.length-1 do #5 - Zahlen von 0 bis Länge des Arrays minus 1 durchgehen
	for j in 0..array.length-i-2 do #6 - Zahlen von 0 bis Länge des Arrays minus i minus 2 durchgehen
		if array[j]>array[j+1] then #7 - Überprüfen ob Array(j) größer als Array(j plus 1) ist
			buffer = array[j+1] #8 - Zahl aus Array(j plus 1) in Buffer speichern
			array[j+1] = array[j] #9 - Zahl in Array(j plus 1) mit Zahl aus Array(j) ersetzen
			array[j] = buffer #10 - Zahl in Array(j) mit Zahl aus Buffer ersetzen
		end
	end
end

p(array) #11 - Array ausgeben