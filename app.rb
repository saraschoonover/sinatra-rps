require "sinatra"
require "sinatra/reloader"

get("/") do
  
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <ul>
    <li><a href=\"/paper\">Play Paper</a></li>
    <li><a href=\"/rock\">Play Rock</a></li>
    <li><a href=\"/scissors\">Play Scissors</a></li>
    <li><a href=\"/rules\">Rules</a></li>
  </ul>
  "
  
end

get("/rock") do
  arr = ["paper", "rock", "scissors"]
  @comp_move = arr.sample
  @lose = "We lost!"
  @win = "We won!"
  @tie = "We tied!"
 erb(:rock)
end

get("/paper") do
  arr = ["paper", "rock", "scissors"]
  @comp_move = arr.sample
  @lose = "We lost!"
  @win = "We win!"
  @tie = "We tied!"

  erb(:paper)
 end

 get("/scissors") do
  arr = ["paper", "rock", "scissors"]
  @comp_move = arr.sample
  @lose = "We lost!"
  @win = "We win!"
  @tie = "We tied!"
  erb(:scissors)
 end

 get ("/rules") do 
  erb(:rules)
 end
