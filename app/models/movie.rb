class Movie < ApplicationRecord
   has_many :actors

   validates :plot, length: {maximum: 250}
   validates :title, :year, presence: true 

end
