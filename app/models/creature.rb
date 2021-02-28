class Creature < ApplicationRecord
  belongs_to :user
  has_many :pickups
  def self.accepted_types
    ['Monster', 'Character']
  end

  def self.randomize_monsters(round_count)
    where(type: 'Monster').limit(round_count).order('random()')
  end
end
