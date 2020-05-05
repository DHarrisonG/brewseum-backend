class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :user_bars
    has_many :comments
    has_many :bars, through: :user_bars
    has_many :visits, through: :comments, source: :bar


    
end
