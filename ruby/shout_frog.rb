module Shout
	def self.yell_angrily(words)
		puts words + '!!!' + ':('
	end

	def self.yellling_happily(words)
		puts words + '!!!' + ':D'
	end

end


Shout.yellling_happily("I like puppies")
Shout.yell_angrily("I don't like carrots")



