class Salmon
include Mongoid::Document

has_one :river 
field :name, type: String
field :location, type: String
end