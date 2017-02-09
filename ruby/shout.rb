module Shout

	def yelling_happily(words)
		puts words + "!!!" + " :)"
	end

	def yelling_angrily(words)
		puts words + "!!!" + ":("
	end
end

class Birthday
	include Shout
end

class Greeting
	include Shout
end

class Stop
	include Shout
end


birthday = Birthday.new
birthday.yelling_happily('Happy Birthday')

greeting = Greeting.new
greeting.yelling_happily('Hello')

stop = Stop.new
stop.yelling_angrily('NO!')




