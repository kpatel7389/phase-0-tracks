module Shout
	def yell_angrily(words)
		puts words + '!!!' + ':('
	end

	def yellling_happily(words)
		puts words + '!!!' + ':D'
	end
end

class Stop
	include Shout
end

class Birthday
	include Shout
end

birthday = Birthday.new
birthday.yellling_happily('Happy Birthday')

stop = Stop.new
stop.yell_angrily("No")



# Shout.yellling_happily("I like puppies")
# Shout.yell_angrily("I don't like carrots")



