require 'httparty'

Movie.destroy_all
puts "foi movie"
List.destroy_all
puts "foi list"
Bookmark.destroy_all
puts "foi bookmark"


poster_image_url = 'https://image.tmdb.org/t/p/w500'
url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"

puts '=' * 20
puts 'Creating movies'
puts '=' * 20

20.times do |i|
  response = HTTParty.get("#{url}#{i + 1}")
  movies_data = response.parsed_response['results']

  movies_data.each do |movie|
    next unless Movie.where(title: movie['title']).empty?

    new_movie = Movie.create!(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{poster_image_url}#{movie['poster_path']}",
      rating: movie['vote_average']
    )

    puts "#{new_movie.title} created."
  end
end

puts "#{Movie.count} movies created!"
puts 'Seeds done'
