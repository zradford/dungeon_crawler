class Pickup < ApplicationRecord
  def self.accepted_types
    ['Skill', 'Special', 'Spell', 'Effect', 'Terrain']
  end
end
