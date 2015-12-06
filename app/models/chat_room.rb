class ChatRoom
  include Mongoid::Document
  field :name, type: String
  field :latitude, type: Float
  field :longtitude, type: Float

  validates :name, presence: true, length: {in: 3..30}
  validates :latitude, presence: true
  validates :longtitude, presence: true
end
