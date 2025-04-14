def movie_listing(title, rank=title.length)
    "Movie: #{title.capitalize} has a rank of #{rank}"
end

puts movie_listing("gonies", 10)
puts movie_listing("Lamascara", 9)

a_title = "Collado"
puts movie_listing(a_title, 10)