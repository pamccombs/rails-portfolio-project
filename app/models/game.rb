class Game < ApplicationRecord
    validates_inclusion_of :rating, :in => 1..10, :message => "Sorry, the rating must be between 1-10."

    has_many :genres
    has_many :users, through: :genres

end
