class UserBarSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :bar

end