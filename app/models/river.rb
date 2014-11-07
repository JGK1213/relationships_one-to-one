class River
include Mongoid::Document

belongs_to :salmon
field :name, type: String
field :location, type: String
end