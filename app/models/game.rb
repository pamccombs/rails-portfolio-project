class Game < ApplicationRecord
    validates_inclusion_of :rating, :in => 1..10, :message => "Sorry, the rating must be between 1-10."

    has_many :genres
    has_many :users, through: :genres

    def genre_category
        self.try(:genre).try(:category)
    end

    def genre_category=(category)
        genre = Genre.find_or_create_by(category: category)
        self.genre = genre
    end

end
