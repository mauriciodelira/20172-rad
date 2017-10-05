print "Numero: "
num = gets.to_i

while num > -5
	puts "\n--- #{num} ---"
	if num % 2 == 0
		puts "número par"
	else puts "número ímpar"
	end

	if num > 0
		puts "é positivo"
	elsif num < 0
		puts "é negativo"
	else puts "> zero <"
	end

	num = num - 1

end