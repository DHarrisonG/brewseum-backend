class BarSerializer < ActiveModel::Serializer
    attributes :id, :state, :city, :name, :image, :opened, :overview, :latitude, :longitude
    has_many :users
    has_many :commentors
    has_many :comments
end
