def to_roman_units(numero)
	
	if numero < 4
		"I" * numero
	elsif numero == 4
		"I" + "V" 
	elsif numero >= 5 && numero < 9
		 "V" + "I" * (numero - 5)
	elsif numero == 9 
		"I" + "X"
	end	
end

def to_roman_tens(numero)
	tens1= numero % 100
	tens = tens1 / 10  
	
	if tens < 4
		"X" * tens
	elsif tens == 4
		"X" + "L"
	elsif tens >= 5 && tens < 9
		 "L" + "X" * (tens - 5)
	elsif tens == 9
		"X" + "C"	 			
	end
end

def to_roman(numero)
 z = numero % 10 
 units = to_roman_units(z) 
 tens = to_roman_tens(numero)
 hund = to_roman_hund(numero)
 thou = to_roman_thou(numero) 
 "#{thou}#{hund}#{tens}#{units}"
end

def to_roman_hund(numero)
	hund1 = numero % 1000
	hund = hund1 / 100

	if hund < 4
		"C" * hund
	elsif hund == 4
		"C" + "D"
	elsif hund >= 5 && hund < 9
		"D" + "C" * (hund - 5)
	elsif hund == 9
	 	"C" + "M"
	end 
end

def to_roman_thou(numero)
	thou = numero / 1000
	if thou < 4
		"M" * thou
	end
end


	
	
a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 
