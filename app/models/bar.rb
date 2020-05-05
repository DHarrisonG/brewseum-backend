class Bar < ApplicationRecord
    has_many :user_bars
    has_many :comments
    has_many :users, through: :user_bars
    has_many :commentors, through: :comments, source: :user
end
