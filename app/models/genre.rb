class Genre < ApplicationRecord
    belongs_to :user
    belongs_to :game

    def self.search(query)
        if query.present?
          where('CATEGORY like ?', "%#{query}%")
        else
          self.all
        end
    end
end
