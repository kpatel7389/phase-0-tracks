# puts "test"
# movie_genres = {"thriller" => 'shudder island', "horror" => 'conjuring_2', "comedy" => 'why him?'}
# movie_genres2 = []

# puts movie_genres
# movie_genres.each do |genre, movie|
#   puts "Genre is #{genre}, movie is #{movie}"
# end

# puts movie_genres

# movie_genres2 = movie_genres.map do |genre, movie|
# end

# puts movie_genres2
# 1.
numbers = [1, 2, 3, 4, 5, 6]
numbers.reject! { |digits| digits < 3} 
puts numbers

# 2.
numbers = [1, 2, 3, 4, 5, 6]
numbers.select! { |digits| digits < 3}
puts numbers

# 3.
numbers = [1, 2, 3, 4, 5, 6]
numbers.each { |digits| }
  if numbers[3]
    puts "Index[3]: #{numbers[3]}"
  end

# 4.
numbers = [1, 2, 3, 4, 5, 6]
numbers.reject! { |digits| digits.even? == true }
puts numbers

# -------------
# 1.
numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
numbers.reject! { |digits, word| digits < 3 }
puts numbers

# 2.
numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
numbers.select! { |digits, word| digits < 3}
puts numbers

# 3.
numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
numbers.each_with_index do |(digits, word), index|
  if index == 3
    puts "Digit: #{digits}, Word: #{word}"
  end
end

puts numbers