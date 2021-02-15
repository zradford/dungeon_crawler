class Creature < ApplicationRecord
  belongs_to :user
  has_many :pickups
  def self.accepted_types
    ['Monster', 'Character']
  end
end
