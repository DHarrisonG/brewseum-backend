class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :image, :about
    has_many :bars
    has_many :visits
    has_many :comments
    
end