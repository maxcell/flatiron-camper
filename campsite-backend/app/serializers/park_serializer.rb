class ParkSerializer < ActiveModel::Serializer
  attributes :id, :max_capacity, :has_showers, :cars_allowed

  has_many :reservations
end
