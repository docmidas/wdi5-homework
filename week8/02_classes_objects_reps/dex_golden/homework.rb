########
##Problem 1
puts "\n*************\n Problem 1\n**************"

def lengths(array)
	length = []
	array.each do |word|
		length.push(word.length)		
	end
	p length
end
lengths(["I", "am", "not", "your", "waiter"])
########
##Problem 2
puts "\n*************\n Problem 2\n**************"

def transmogrifier(a, b, c)
	puts (a * b) ** c
end

transmogrifier(5, 4, 3) ## => 8000
transmogrifier(13, 12, 5)### => 92389579776
transmogrifier(42, 13, 7)### => 14466001271480793216
################
##Problem 3
puts "\n*************\n Problem 3\n**************"
def toonify(accent, sentence)
	case accent
		when "daffy"
			sentence.gsub!(/ss/, "ss" => "th")
			sentence.gsub(/s/, "s" => "th")
		when "elmer"
			sentence.gsub(/r/, "w")
		else	
			sentence
	end	
end
puts toonify("daffy", "sick him")
puts toonify("elmer","i'm making rabbit stew")
puts toonify("marvin","i'm a martian")
################
##Problem 4
puts "\n*************\n Problem 4\n**************"

def wordReverse(sentence)
	sentence.split(" ").reverse.join(" ")
end	
puts wordReverse("Now I know what a TV dinner feels like")
################
##Problem 5
puts "\n*************\n Problem 5\n**************"

def letterReverse(sentence)
	sentence.reverse.split(" ").reverse.join(" ")
end
puts letterReverse("Now I know what a TV dinner feels like")
################
##Problem 6
puts "\n*************\n Problem 6\n**************"

def longest(array_strings)
	# ls = lengths(array_strings)
	# ls.sort! {|x,y| y <=> x}
	# ls[0]
	array_strings.sort_by! {|x| x.length}
	array_strings[array_strings.length-1]	
end	
puts longest(["Jerkass", "I", "am", "not", "your", "waiter"])
###################
