class Game < ApplicationRecord
    validates_presence_of :title, :rating
        validates_inclusion_of :rating, :in => 1..10, :message => "Sorry, the rating must be between 1-10."


    has_many :genres
    has_many :users, through: :genres
    has_and_belongs_to_many :users

    def genre_category
        self.try(:genre).try(:category)
    end

    def genre_category=(category)
        genre = Genre.find_or_create_by(category: category)
        self.genre = genre
    end

    def self.search(query)
        if query.present?
          where('TITLE like ?', "%#{query}%")
        else
          self.all
        end
    end

end
