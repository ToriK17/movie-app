class Movie < ApplicationRecord
   has_many :actors
   has_many :movie_genres
   has_many :genres, through: :movie_genres

   validates :plot, length: {maximum: 250}
   validates :title, :year, presence: true 

end
