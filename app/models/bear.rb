class Bear
include Mongoid::Document

field :name, type: String
field :location, type: String
end