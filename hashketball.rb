# Write your code below game_hash
require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player)
  points_scored = 0
    game_hash.each do |home_away, team_stats|
      # team_stats[:players] points to an array 
        team_stats[:players].each do |players_stats|
         
             if players_stats[:player_name] == player
                points_scored = players_stats[:points]
             end
        end
    end
  points_scored
end
# method end
def shoe_size(player)
  shoe_size = 0
      game_hash.each do |home_away, team_stats|
        # team_stats[:players] points to an array 
          team_stats[:players].each do |players_stats|
              if players_stats[:player_name] == player
                  shoe_size = players_stats[:shoe]
              end
          end
      end
  shoe_size
end
# method end
def team_colors(team_name_input)
   colors = nil
    game_hash.each do |home_away, team_stats|
      if team_stats[:team_name] == team_name_input
        colors  = team_stats[:colors]
      end
    end
  colors
end
# method end
def team_names
   teams = []
      game_hash.each { |home_away, team_stats| teams << team_stats[:team_name] }
   teams
end
# method end
def player_numbers(team)
    jersey_numbers = []
      game_hash.each do |home_away, team_stats|
          if team_stats[:team_name] == team
           
              team_stats[:players].each do |player|
               
                jersey_numbers << player[:number]
              end
          end
      end
    jersey_numbers
end
# method end
def player_stats(player_in_question)
  player_stat = nil
      game_hash.each do |home_away, team_stats|
          team_stats[:players].each do |player|
              if player[:player_name] == player_in_question
                player_stat = player
              end
          end
      end
  player_stat
end
# method end
def big_shoe_rebounds 
  amt_rebounds = 0
  size = 0
    game_hash.each do |home_away, team_stats|
        team_stats[:players].each do |player|
          if size < player[:shoe]
            size = player[:shoe]
            amt_rebounds = player[:rebounds]
          end
          # binding.pry
        end
    end
  amt_rebounds
end