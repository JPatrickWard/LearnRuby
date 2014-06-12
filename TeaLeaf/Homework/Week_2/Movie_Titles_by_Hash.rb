# Write a program that uses a HASH to store a list of movie titles with the year they came out.
# Use a puts command to screen display the year of each movie.

movies = {  "Back To The Future" => 1984,
            "Terminator" => 1986,
            "Star Trek" => 1981,
            "Firefly" => 2004
         }
puts movies.map{|e| e[1]}



