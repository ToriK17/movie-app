class Movie < ApplicationRecord
   validates :plot, length: {maximum: 250}
   validates :title, :year, presence: true 
end
