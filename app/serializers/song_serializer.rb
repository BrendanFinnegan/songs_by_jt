class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :catcher
  # has_many :super_fans
end
