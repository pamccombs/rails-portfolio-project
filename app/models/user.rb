class User < ApplicationRecord
    
    validates_presence_of :display_name, :email
	    validates :display_name, uniqueness:  { message: "Sorry, that display_name is already taken." }
        validates :email, uniqueness: { message: "That email already has an account, did you mean to login?" }
    
    has_secure_password
    has_many :games
    has_many :genres, through: :games 
end
