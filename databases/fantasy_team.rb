# require gem
require 'sqlite3'

# Create SQLite3 database
db = SQLite3::Database.new("team_info.db")

# Create table
team_log = <<-SQL

	CREATE TABLE IF NOT EXISTS team_info(
		id INTEGER PRIMARY KEY,
		player_name VARCHAR(255),
		position VARCHAR(255),
		team_name VARCHAR(255)
	)
SQL

db.execute(team_log)


# Create method to insert fantasy football team info
def log_player
	db = SQLite3::Database.new("team_info.db")
	complete = false
	until complete
		puts "Please type the players name or type done when done."
		player_name = gets.chomp
		if player_name == "done"
			complete = true
		else
			puts "Please type the position"
			position = gets.chomp
			puts "Please type the team_name"
			team_name = gets.chomp
			db.execute("INSERT INTO team_info (player_name, position, team_name) VALUES (?,?,?)", [player_name, position, team_name])
		end
end


# Create method to view fantasy football team
def view_fantasy_team
	db = SQLite3::Database.new("team_info")
	p db.execute("SELECT * FROM team_info")
end


def user(answer)
	if answer == "a"
		log_player
	elsif answer == "b"
		view_fantasy_team
	else
		puts "Not valid!"
	end
end


## Driver Code

complete = false
until complete
	puts "Create your fantasy football team!"
	puts "If you would like add a Player type (a) or if you would like to view your team type (b)"
	answer = gets.chomp
	user(answer)
	puts "Are you done building your team?(y/n)"
	answer1 = gets.chomp
	if answer1 == "y"
		complete = true
	end
end