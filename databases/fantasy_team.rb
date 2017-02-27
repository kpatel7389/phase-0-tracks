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