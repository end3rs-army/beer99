class Beer

	attr_accessor :bottles, :location

	def initialize(bottles = 99,location = "wall")
		@bottles = bottles	
		@location = location
	end


	def countdown

		@bottles = gets.chomp.to_i
		@location = gets.chomp

		(-@bottles..-1).each do |beer|

		puts "#{beer.abs} #{bottle_or_bottles(beer.abs)} of beer on the #{@location}, #{beer.abs} #{bottle_or_bottles(beer.abs)} of beer...\ntake one down, pass it around #{beer.abs-1} bottles of beer on the #{@location}\n\n"

		end
	end

	def bottle_or_bottles(x)
		if x == 1
			"bottle"
		else
			"bottles"
		end
	end

end

song = Beer.new
song.countdown
