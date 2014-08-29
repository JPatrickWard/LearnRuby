#store dates of movies in an array, then display the contents of the array on the screen

movies = {  "Back To The Future" => 1984,
            "Terminator" => 1986,
            "Star Trek" => 1981,
            "Firefly" => 2004
}
movies.map{|e| e[1]}
movies.count.times do
  puts e
end