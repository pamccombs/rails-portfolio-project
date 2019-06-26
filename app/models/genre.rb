class Genre < ApplicationRecord
  validates_presence_of :category
  #validates :category, uniqueness:  { message: "Sorry, that display_name is already taken." }
    
  
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
